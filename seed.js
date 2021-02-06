const faker = require('faker');
const writeUsers = fs.createWriteStream('users.csv');
writeUsers.write('id, username, email\n', 'utf8');

const seedjs = () => {
  let i = 500000;
  let id = 0;
  const write = () => {
    let ok = true;
    do {
      i -= 1;
      id += 1;
      const username = faker.internet.userName();
      const email = faker.internet.email();
      const data = `${id}, ${username}, ${email}\n`;
      if (i === 0) {
        writer.write(data, encoding, callback);
      } else {
// see if we should continue, or wait
// don't pass the callback, because we're not done yet.
        ok = writer.write(data, encoding);
      }
    } while (i > 0 && ok);
    if (i > 0) {
// had to stop early!
// write some more once it drains
      writer.once('drain', write);
    }
  }
  write();
}