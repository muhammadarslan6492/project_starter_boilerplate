import request from 'supertest';
import Server from '../core/app';

const app = new Server().getAppInstance();

describe('Sample Test', () => {
  it('should test that true === true', () => {
    expect(true).toBe(true);
  });
});
