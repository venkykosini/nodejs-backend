FROM node:16
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY . ./
RUN npm i
# Build the application
RUN npm run build
EXPOSE 3000
# Run the command "npm run start:uat" when the container starts
CMD ["npm", "run", "start"]
#CMD ["npm", "start"]
