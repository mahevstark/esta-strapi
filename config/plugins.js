module.exports = ({ env }) => ({
    upload: {
        config: {
            provider: 'aws-s3', // For community providers pass the full package name (e.g. provider: 'strapi-provider-upload-google-cloud-storage')
            providerOptions: {
                accessKeyId: env('AWS_ACCESS_KEY_ID'),
                secretAccessKey: env('AWS_ACCESS_SECRET'),
                region: env('AWS_REGION'),
                params: {
                    Bucket: env('AWS_BUCKET'),
                },
            },
        },
    },

    io: {
        enabled: true,
        config: {
            IOServerOptions :{
                cors: { origin: "*", "methods": "GET,HEAD,PUT,PATCH,POST" },
            },
            contentTypes: {
                "order":["update"]
            },
            events:[
                {
                    name: "connection",
                    handler: ({ strapi }, socket) => {
                        console.log("New connection" + socket.id);
                        strapi.log.info(`[io] new connection with id ${socket.id}`);
                    },
                },
            ]
        },
    },
    // ...
});