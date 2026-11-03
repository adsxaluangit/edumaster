"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
console.log("CHECKING USERS...");
strapi.query("plugin::users-permissions.user").findMany().then(users => console.log("USERS:", users.map(u => u.username))).catch(console.error);
