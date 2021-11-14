{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAMCredentials.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAMCredentials.Types.Product where

import Network.Google.IAMCredentials.Types.Sum
import Network.Google.Prelude

--
-- /See:/ 'generateIdTokenRequest' smart constructor.
data GenerateIdTokenRequest =
  GenerateIdTokenRequest'
    { _gitrAudience :: !(Maybe Text)
    , _gitrDelegates :: !(Maybe [Text])
    , _gitrIncludeEmail :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateIdTokenRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gitrAudience'
--
-- * 'gitrDelegates'
--
-- * 'gitrIncludeEmail'
generateIdTokenRequest
    :: GenerateIdTokenRequest
generateIdTokenRequest =
  GenerateIdTokenRequest'
    { _gitrAudience = Nothing
    , _gitrDelegates = Nothing
    , _gitrIncludeEmail = Nothing
    }


-- | Required. The audience for the token, such as the API or account that
-- this token grants access to.
gitrAudience :: Lens' GenerateIdTokenRequest (Maybe Text)
gitrAudience
  = lens _gitrAudience (\ s a -> s{_gitrAudience = a})

-- | The sequence of service accounts in a delegation chain. Each service
-- account must be granted the \`roles\/iam.serviceAccountTokenCreator\`
-- role on its next service account in the chain. The last service account
-- in the chain must be granted the
-- \`roles\/iam.serviceAccountTokenCreator\` role on the service account
-- that is specified in the \`name\` field of the request. The delegates
-- must have the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`. The \`-\`
-- wildcard character is required; replacing it with a project ID is
-- invalid.
gitrDelegates :: Lens' GenerateIdTokenRequest [Text]
gitrDelegates
  = lens _gitrDelegates
      (\ s a -> s{_gitrDelegates = a})
      . _Default
      . _Coerce

-- | Include the service account email in the token. If set to \`true\`, the
-- token will contain \`email\` and \`email_verified\` claims.
gitrIncludeEmail :: Lens' GenerateIdTokenRequest (Maybe Bool)
gitrIncludeEmail
  = lens _gitrIncludeEmail
      (\ s a -> s{_gitrIncludeEmail = a})

instance FromJSON GenerateIdTokenRequest where
        parseJSON
          = withObject "GenerateIdTokenRequest"
              (\ o ->
                 GenerateIdTokenRequest' <$>
                   (o .:? "audience") <*> (o .:? "delegates" .!= mempty)
                     <*> (o .:? "includeEmail"))

instance ToJSON GenerateIdTokenRequest where
        toJSON GenerateIdTokenRequest'{..}
          = object
              (catMaybes
                 [("audience" .=) <$> _gitrAudience,
                  ("delegates" .=) <$> _gitrDelegates,
                  ("includeEmail" .=) <$> _gitrIncludeEmail])

--
-- /See:/ 'generateAccessTokenResponse' smart constructor.
data GenerateAccessTokenResponse =
  GenerateAccessTokenResponse'
    { _gatrAccessToken :: !(Maybe Text)
    , _gatrExpireTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateAccessTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gatrAccessToken'
--
-- * 'gatrExpireTime'
generateAccessTokenResponse
    :: GenerateAccessTokenResponse
generateAccessTokenResponse =
  GenerateAccessTokenResponse'
    {_gatrAccessToken = Nothing, _gatrExpireTime = Nothing}


-- | The OAuth 2.0 access token.
gatrAccessToken :: Lens' GenerateAccessTokenResponse (Maybe Text)
gatrAccessToken
  = lens _gatrAccessToken
      (\ s a -> s{_gatrAccessToken = a})

-- | Token expiration time. The expiration time is always set.
gatrExpireTime :: Lens' GenerateAccessTokenResponse (Maybe UTCTime)
gatrExpireTime
  = lens _gatrExpireTime
      (\ s a -> s{_gatrExpireTime = a})
      . mapping _DateTime

instance FromJSON GenerateAccessTokenResponse where
        parseJSON
          = withObject "GenerateAccessTokenResponse"
              (\ o ->
                 GenerateAccessTokenResponse' <$>
                   (o .:? "accessToken") <*> (o .:? "expireTime"))

instance ToJSON GenerateAccessTokenResponse where
        toJSON GenerateAccessTokenResponse'{..}
          = object
              (catMaybes
                 [("accessToken" .=) <$> _gatrAccessToken,
                  ("expireTime" .=) <$> _gatrExpireTime])

--
-- /See:/ 'signJwtResponse' smart constructor.
data SignJwtResponse =
  SignJwtResponse'
    { _sjrKeyId :: !(Maybe Text)
    , _sjrSignedJwt :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignJwtResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrKeyId'
--
-- * 'sjrSignedJwt'
signJwtResponse
    :: SignJwtResponse
signJwtResponse =
  SignJwtResponse' {_sjrKeyId = Nothing, _sjrSignedJwt = Nothing}


-- | The ID of the key used to sign the JWT. The key used for signing will
-- remain valid for at least 12 hours after the JWT is signed. To verify
-- the signature, you can retrieve the public key in several formats from
-- the following endpoints: - RSA public key wrapped in an X.509 v3
-- certificate:
-- \`https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/x509\/{ACCOUNT_EMAIL}\`
-- - Raw key in JSON format:
-- \`https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/raw\/{ACCOUNT_EMAIL}\`
-- - JSON Web Key (JWK):
-- \`https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/jwk\/{ACCOUNT_EMAIL}\`
sjrKeyId :: Lens' SignJwtResponse (Maybe Text)
sjrKeyId = lens _sjrKeyId (\ s a -> s{_sjrKeyId = a})

-- | The signed JWT. Contains the automatically generated header; the
-- client-supplied payload; and the signature, which is generated using the
-- key referenced by the \`kid\` field in the header. After the key pair
-- referenced by the \`key_id\` response field expires, Google no longer
-- exposes the public key that can be used to verify the JWT. As a result,
-- the receiver can no longer verify the signature.
sjrSignedJwt :: Lens' SignJwtResponse (Maybe Text)
sjrSignedJwt
  = lens _sjrSignedJwt (\ s a -> s{_sjrSignedJwt = a})

instance FromJSON SignJwtResponse where
        parseJSON
          = withObject "SignJwtResponse"
              (\ o ->
                 SignJwtResponse' <$>
                   (o .:? "keyId") <*> (o .:? "signedJwt"))

instance ToJSON SignJwtResponse where
        toJSON SignJwtResponse'{..}
          = object
              (catMaybes
                 [("keyId" .=) <$> _sjrKeyId,
                  ("signedJwt" .=) <$> _sjrSignedJwt])

--
-- /See:/ 'signBlobRequest' smart constructor.
data SignBlobRequest =
  SignBlobRequest'
    { _sbrDelegates :: !(Maybe [Text])
    , _sbrPayload :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignBlobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrDelegates'
--
-- * 'sbrPayload'
signBlobRequest
    :: SignBlobRequest
signBlobRequest =
  SignBlobRequest' {_sbrDelegates = Nothing, _sbrPayload = Nothing}


-- | The sequence of service accounts in a delegation chain. Each service
-- account must be granted the \`roles\/iam.serviceAccountTokenCreator\`
-- role on its next service account in the chain. The last service account
-- in the chain must be granted the
-- \`roles\/iam.serviceAccountTokenCreator\` role on the service account
-- that is specified in the \`name\` field of the request. The delegates
-- must have the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`. The \`-\`
-- wildcard character is required; replacing it with a project ID is
-- invalid.
sbrDelegates :: Lens' SignBlobRequest [Text]
sbrDelegates
  = lens _sbrDelegates (\ s a -> s{_sbrDelegates = a})
      . _Default
      . _Coerce

-- | Required. The bytes to sign.
sbrPayload :: Lens' SignBlobRequest (Maybe ByteString)
sbrPayload
  = lens _sbrPayload (\ s a -> s{_sbrPayload = a}) .
      mapping _Bytes

instance FromJSON SignBlobRequest where
        parseJSON
          = withObject "SignBlobRequest"
              (\ o ->
                 SignBlobRequest' <$>
                   (o .:? "delegates" .!= mempty) <*> (o .:? "payload"))

instance ToJSON SignBlobRequest where
        toJSON SignBlobRequest'{..}
          = object
              (catMaybes
                 [("delegates" .=) <$> _sbrDelegates,
                  ("payload" .=) <$> _sbrPayload])

--
-- /See:/ 'generateAccessTokenRequest' smart constructor.
data GenerateAccessTokenRequest =
  GenerateAccessTokenRequest'
    { _gatrDelegates :: !(Maybe [Text])
    , _gatrLifetime :: !(Maybe GDuration)
    , _gatrScope :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateAccessTokenRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gatrDelegates'
--
-- * 'gatrLifetime'
--
-- * 'gatrScope'
generateAccessTokenRequest
    :: GenerateAccessTokenRequest
generateAccessTokenRequest =
  GenerateAccessTokenRequest'
    {_gatrDelegates = Nothing, _gatrLifetime = Nothing, _gatrScope = Nothing}


-- | The sequence of service accounts in a delegation chain. Each service
-- account must be granted the \`roles\/iam.serviceAccountTokenCreator\`
-- role on its next service account in the chain. The last service account
-- in the chain must be granted the
-- \`roles\/iam.serviceAccountTokenCreator\` role on the service account
-- that is specified in the \`name\` field of the request. The delegates
-- must have the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`. The \`-\`
-- wildcard character is required; replacing it with a project ID is
-- invalid.
gatrDelegates :: Lens' GenerateAccessTokenRequest [Text]
gatrDelegates
  = lens _gatrDelegates
      (\ s a -> s{_gatrDelegates = a})
      . _Default
      . _Coerce

-- | The desired lifetime duration of the access token in seconds. By
-- default, the maximum allowed value is 1 hour. To set a lifetime of up to
-- 12 hours, you can add the service account as an allowed value in an
-- Organization Policy that enforces the
-- \`constraints\/iam.allowServiceAccountCredentialLifetimeExtension\`
-- constraint. See detailed instructions at
-- https:\/\/cloud.google.com\/iam\/help\/credentials\/lifetime If a value
-- is not specified, the token\'s lifetime will be set to a default value
-- of 1 hour.
gatrLifetime :: Lens' GenerateAccessTokenRequest (Maybe Scientific)
gatrLifetime
  = lens _gatrLifetime (\ s a -> s{_gatrLifetime = a})
      . mapping _GDuration

-- | Required. Code to identify the scopes to be included in the OAuth 2.0
-- access token. See
-- https:\/\/developers.google.com\/identity\/protocols\/googlescopes for
-- more information. At least one value required.
gatrScope :: Lens' GenerateAccessTokenRequest [Text]
gatrScope
  = lens _gatrScope (\ s a -> s{_gatrScope = a}) .
      _Default
      . _Coerce

instance FromJSON GenerateAccessTokenRequest where
        parseJSON
          = withObject "GenerateAccessTokenRequest"
              (\ o ->
                 GenerateAccessTokenRequest' <$>
                   (o .:? "delegates" .!= mempty) <*> (o .:? "lifetime")
                     <*> (o .:? "scope" .!= mempty))

instance ToJSON GenerateAccessTokenRequest where
        toJSON GenerateAccessTokenRequest'{..}
          = object
              (catMaybes
                 [("delegates" .=) <$> _gatrDelegates,
                  ("lifetime" .=) <$> _gatrLifetime,
                  ("scope" .=) <$> _gatrScope])

--
-- /See:/ 'signJwtRequest' smart constructor.
data SignJwtRequest =
  SignJwtRequest'
    { _sjrDelegates :: !(Maybe [Text])
    , _sjrPayload :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignJwtRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrDelegates'
--
-- * 'sjrPayload'
signJwtRequest
    :: SignJwtRequest
signJwtRequest =
  SignJwtRequest' {_sjrDelegates = Nothing, _sjrPayload = Nothing}


-- | The sequence of service accounts in a delegation chain. Each service
-- account must be granted the \`roles\/iam.serviceAccountTokenCreator\`
-- role on its next service account in the chain. The last service account
-- in the chain must be granted the
-- \`roles\/iam.serviceAccountTokenCreator\` role on the service account
-- that is specified in the \`name\` field of the request. The delegates
-- must have the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`. The \`-\`
-- wildcard character is required; replacing it with a project ID is
-- invalid.
sjrDelegates :: Lens' SignJwtRequest [Text]
sjrDelegates
  = lens _sjrDelegates (\ s a -> s{_sjrDelegates = a})
      . _Default
      . _Coerce

-- | Required. The JWT payload to sign. Must be a serialized JSON object that
-- contains a JWT Claims Set. For example: \`{\"sub\":
-- \"user\'example.com\", \"iat\": 313435}\` If the JWT Claims Set contains
-- an expiration time (\`exp\`) claim, it must be an integer timestamp that
-- is not in the past and no more than 12 hours in the future.
sjrPayload :: Lens' SignJwtRequest (Maybe Text)
sjrPayload
  = lens _sjrPayload (\ s a -> s{_sjrPayload = a})

instance FromJSON SignJwtRequest where
        parseJSON
          = withObject "SignJwtRequest"
              (\ o ->
                 SignJwtRequest' <$>
                   (o .:? "delegates" .!= mempty) <*> (o .:? "payload"))

instance ToJSON SignJwtRequest where
        toJSON SignJwtRequest'{..}
          = object
              (catMaybes
                 [("delegates" .=) <$> _sjrDelegates,
                  ("payload" .=) <$> _sjrPayload])

--
-- /See:/ 'signBlobResponse' smart constructor.
data SignBlobResponse =
  SignBlobResponse'
    { _sbrKeyId :: !(Maybe Text)
    , _sbrSignedBlob :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignBlobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrKeyId'
--
-- * 'sbrSignedBlob'
signBlobResponse
    :: SignBlobResponse
signBlobResponse =
  SignBlobResponse' {_sbrKeyId = Nothing, _sbrSignedBlob = Nothing}


-- | The ID of the key used to sign the blob. The key used for signing will
-- remain valid for at least 12 hours after the blob is signed. To verify
-- the signature, you can retrieve the public key in several formats from
-- the following endpoints: - RSA public key wrapped in an X.509 v3
-- certificate:
-- \`https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/x509\/{ACCOUNT_EMAIL}\`
-- - Raw key in JSON format:
-- \`https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/raw\/{ACCOUNT_EMAIL}\`
-- - JSON Web Key (JWK):
-- \`https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/jwk\/{ACCOUNT_EMAIL}\`
sbrKeyId :: Lens' SignBlobResponse (Maybe Text)
sbrKeyId = lens _sbrKeyId (\ s a -> s{_sbrKeyId = a})

-- | The signature for the blob. Does not include the original blob. After
-- the key pair referenced by the \`key_id\` response field expires, Google
-- no longer exposes the public key that can be used to verify the blob. As
-- a result, the receiver can no longer verify the signature.
sbrSignedBlob :: Lens' SignBlobResponse (Maybe ByteString)
sbrSignedBlob
  = lens _sbrSignedBlob
      (\ s a -> s{_sbrSignedBlob = a})
      . mapping _Bytes

instance FromJSON SignBlobResponse where
        parseJSON
          = withObject "SignBlobResponse"
              (\ o ->
                 SignBlobResponse' <$>
                   (o .:? "keyId") <*> (o .:? "signedBlob"))

instance ToJSON SignBlobResponse where
        toJSON SignBlobResponse'{..}
          = object
              (catMaybes
                 [("keyId" .=) <$> _sbrKeyId,
                  ("signedBlob" .=) <$> _sbrSignedBlob])

--
-- /See:/ 'generateIdTokenResponse' smart constructor.
newtype GenerateIdTokenResponse =
  GenerateIdTokenResponse'
    { _gitrToken :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateIdTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gitrToken'
generateIdTokenResponse
    :: GenerateIdTokenResponse
generateIdTokenResponse = GenerateIdTokenResponse' {_gitrToken = Nothing}


-- | The OpenId Connect ID token.
gitrToken :: Lens' GenerateIdTokenResponse (Maybe Text)
gitrToken
  = lens _gitrToken (\ s a -> s{_gitrToken = a})

instance FromJSON GenerateIdTokenResponse where
        parseJSON
          = withObject "GenerateIdTokenResponse"
              (\ o -> GenerateIdTokenResponse' <$> (o .:? "token"))

instance ToJSON GenerateIdTokenResponse where
        toJSON GenerateIdTokenResponse'{..}
          = object (catMaybes [("token" .=) <$> _gitrToken])
