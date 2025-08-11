// functions/index.js
const functions = require('firebase-functions');
const admin = require('firebase-admin');
const sgMail = require('@sendgrid/mail');

admin.initializeApp();
const db = admin.firestore();

// Store SendGrid key Using firebase functions:config:set sendgrid.key="KEY"
const SENDGRID_API_KEY = functions.config().sendgrid?.key;
if (SENDGRID_API_KEY) {
  sgMail.setApiKey(SENDGRID_API_KEY);
} else {
  console.warn('SendGrid key not found in functions config.');
}

exports.sendOtpEmail = functions.firestore
  .document('user_otps/{docId}')
  .onWrite(async (change, context) => {
    const before = change.before.exists ? change.before.data() : null;
    const after = change.after.exists ? change.after.data() : null;

    // email and otp
    if (!after || !after.email || !after.otp) return null;

    // لو الاوتي بي اتغيرش (مقارنة مع قبل) يبطل الإرسال
    if (before && before.otp === after.otp) return null;

    const msg = {
      to: after.email,
      from: 'no-reply@yourdomain.com', // غيّرها لبريد موثّق عند SendGrid
      subject: 'Your 4-digit OTP code',
      text: `Your OTP is ${after.otp}. It will expire in 15 minutes.`,
      html: `<p>Your OTP is <strong>${after.otp}</strong>. It will expire in 5 minutes.</p>`
    };

    try {
      if (!SENDGRID_API_KEY) {
        console.error('SendGrid API key not configured.');
        return null;
      }
      await sgMail.send(msg);
      console.log('OTP sent to', after.email);
      return null;
    } catch (err) {
      console.error('Error sending OTP email:', err);
      throw err;
    }
  });
