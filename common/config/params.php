<?php
return [
    'adminEmail' => 'admin@example.com',
    'supportEmail' => 'support@example.com',
    'user.passwordResetTokenExpire' => 3600,
    'mdm.admin.configs' => [
        'advanced' => [
            'app-backend' => [
                '@common/config/main.php',
                '@common/config/main-local.php',
                '@backend/config/main.php',
                '@backend/config/main-local.php',
            ],
            'app-frontend' => [
                '@common/config/main.php',
                '@common/config/main-local.php',
                '@frontend/config/main.php',
                '@frontend/config/main-local.php',
            ],
        ],
    ],
];
