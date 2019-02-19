{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAMCredentials.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAMCredentials.Types.Product where

import           Network.Google.IAMCredentials.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'generateIdTokenRequest' smart constructor.
data GenerateIdTokenRequest =
  GenerateIdTokenRequest'
    { _gitrAudience     :: !(Maybe Text)
    , _gitrDelegates    :: !(Maybe [Text])
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

-- | The audience for the token, such as the API or account that this token
-- grants access to.
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
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`
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
    , _gatrExpireTime  :: !(Maybe DateTime')
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
    { _sjrKeyId     :: !(Maybe Text)
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

-- | The ID of the key used to sign the JWT.
sjrKeyId :: Lens' SignJwtResponse (Maybe Text)
sjrKeyId = lens _sjrKeyId (\ s a -> s{_sjrKeyId = a})

-- | The signed JWT.
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
    , _sbrPayload   :: !(Maybe Bytes)
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
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`
sbrDelegates :: Lens' SignBlobRequest [Text]
sbrDelegates
  = lens _sbrDelegates (\ s a -> s{_sbrDelegates = a})
      . _Default
      . _Coerce

-- | The bytes to sign.
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
-- /See:/ 'generateIdentityBindingAccessTokenRequest' smart constructor.
data GenerateIdentityBindingAccessTokenRequest =
  GenerateIdentityBindingAccessTokenRequest'
    { _gibatrJwt   :: !(Maybe Text)
    , _gibatrScope :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GenerateIdentityBindingAccessTokenRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gibatrJwt'
--
-- * 'gibatrScope'
generateIdentityBindingAccessTokenRequest
    :: GenerateIdentityBindingAccessTokenRequest
generateIdentityBindingAccessTokenRequest =
  GenerateIdentityBindingAccessTokenRequest'
    {_gibatrJwt = Nothing, _gibatrScope = Nothing}

-- | Required. Input token. Must be in JWT format according to RFC7523
-- (https:\/\/tools.ietf.org\/html\/rfc7523) and must have \'kid\' field in
-- the header. Supported signing algorithms: RS256 (RS512, ES256, ES512
-- coming soon). Mandatory payload fields (along the lines of RFC 7523,
-- section 3): - iss: issuer of the token. Must provide a discovery
-- document at $iss\/.well-known\/openid-configuration . The document needs
-- to be formatted according to section 4.2 of the OpenID Connect Discovery
-- 1.0 specification. - iat: Issue time in seconds since epoch. Must be in
-- the past. - exp: Expiration time in seconds since epoch. Must be less
-- than 48 hours after iat. We recommend to create tokens that last shorter
-- than 6 hours to improve security unless business reasons mandate longer
-- expiration times. Shorter token lifetimes are generally more secure
-- since tokens that have been exfiltrated by attackers can be used for a
-- shorter time. you can configure the maximum lifetime of the incoming
-- token in the configuration of the mapper. The resulting Google token
-- will expire within an hour or at \"exp\", whichever is earlier. - sub:
-- JWT subject, identity asserted in the JWT. - aud: Configured in the
-- mapper policy. By default the service account email. Claims from the
-- incoming token can be transferred into the output token accoding to the
-- mapper configuration. The outgoing claim size is limited. Outgoing
-- claims size must be less than 4kB serialized as JSON without whitespace.
-- Example header: { \"alg\": \"RS256\", \"kid\":
-- \"92a4265e14ab04d4d228a48d10d4ca31610936f8\" } Example payload: {
-- \"iss\": \"https:\/\/accounts.google.com\", \"iat\": 1517963104,
-- \"exp\": 1517966704, \"aud\":
-- \"https:\/\/iamcredentials.googleapis.com\/google.iam.credentials.v1.CloudGaia\",
-- \"sub\": \"113475438248934895348\", \"my_claims\": {
-- \"additional_claim\": \"value\" } }
gibatrJwt :: Lens' GenerateIdentityBindingAccessTokenRequest (Maybe Text)
gibatrJwt
  = lens _gibatrJwt (\ s a -> s{_gibatrJwt = a})

-- | Code to identify the scopes to be included in the OAuth 2.0 access
-- token. See
-- https:\/\/developers.google.com\/identity\/protocols\/googlescopes for
-- more information. At least one value required.
gibatrScope :: Lens' GenerateIdentityBindingAccessTokenRequest [Text]
gibatrScope
  = lens _gibatrScope (\ s a -> s{_gibatrScope = a}) .
      _Default
      . _Coerce

instance FromJSON
           GenerateIdentityBindingAccessTokenRequest
         where
        parseJSON
          = withObject
              "GenerateIdentityBindingAccessTokenRequest"
              (\ o ->
                 GenerateIdentityBindingAccessTokenRequest' <$>
                   (o .:? "jwt") <*> (o .:? "scope" .!= mempty))

instance ToJSON
           GenerateIdentityBindingAccessTokenRequest
         where
        toJSON GenerateIdentityBindingAccessTokenRequest'{..}
          = object
              (catMaybes
                 [("jwt" .=) <$> _gibatrJwt,
                  ("scope" .=) <$> _gibatrScope])

--
-- /See:/ 'generateAccessTokenRequest' smart constructor.
data GenerateAccessTokenRequest =
  GenerateAccessTokenRequest'
    { _gatrDelegates :: !(Maybe [Text])
    , _gatrLifetime  :: !(Maybe GDuration)
    , _gatrScope     :: !(Maybe [Text])
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
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`
gatrDelegates :: Lens' GenerateAccessTokenRequest [Text]
gatrDelegates
  = lens _gatrDelegates
      (\ s a -> s{_gatrDelegates = a})
      . _Default
      . _Coerce

-- | The desired lifetime duration of the access token in seconds. Must be
-- set to a value less than or equal to 3600 (1 hour). If a value is not
-- specified, the token\'s lifetime will be set to a default value of one
-- hour.
gatrLifetime :: Lens' GenerateAccessTokenRequest (Maybe Scientific)
gatrLifetime
  = lens _gatrLifetime (\ s a -> s{_gatrLifetime = a})
      . mapping _GDuration

-- | Code to identify the scopes to be included in the OAuth 2.0 access
-- token. See
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
-- /See:/ 'generateIdentityBindingAccessTokenResponse' smart constructor.
data GenerateIdentityBindingAccessTokenResponse =
  GenerateIdentityBindingAccessTokenResponse'
    { _gibatrAccessToken :: !(Maybe Text)
    , _gibatrExpireTime  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GenerateIdentityBindingAccessTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gibatrAccessToken'
--
-- * 'gibatrExpireTime'
generateIdentityBindingAccessTokenResponse
    :: GenerateIdentityBindingAccessTokenResponse
generateIdentityBindingAccessTokenResponse =
  GenerateIdentityBindingAccessTokenResponse'
    {_gibatrAccessToken = Nothing, _gibatrExpireTime = Nothing}

-- | The OAuth 2.0 access token.
gibatrAccessToken :: Lens' GenerateIdentityBindingAccessTokenResponse (Maybe Text)
gibatrAccessToken
  = lens _gibatrAccessToken
      (\ s a -> s{_gibatrAccessToken = a})

-- | Token expiration time. The expiration time is always set.
gibatrExpireTime :: Lens' GenerateIdentityBindingAccessTokenResponse (Maybe UTCTime)
gibatrExpireTime
  = lens _gibatrExpireTime
      (\ s a -> s{_gibatrExpireTime = a})
      . mapping _DateTime

instance FromJSON
           GenerateIdentityBindingAccessTokenResponse
         where
        parseJSON
          = withObject
              "GenerateIdentityBindingAccessTokenResponse"
              (\ o ->
                 GenerateIdentityBindingAccessTokenResponse' <$>
                   (o .:? "accessToken") <*> (o .:? "expireTime"))

instance ToJSON
           GenerateIdentityBindingAccessTokenResponse
         where
        toJSON
          GenerateIdentityBindingAccessTokenResponse'{..}
          = object
              (catMaybes
                 [("accessToken" .=) <$> _gibatrAccessToken,
                  ("expireTime" .=) <$> _gibatrExpireTime])

--
-- /See:/ 'signJwtRequest' smart constructor.
data SignJwtRequest =
  SignJwtRequest'
    { _sjrDelegates :: !(Maybe [Text])
    , _sjrPayload   :: !(Maybe Text)
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
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`
sjrDelegates :: Lens' SignJwtRequest [Text]
sjrDelegates
  = lens _sjrDelegates (\ s a -> s{_sjrDelegates = a})
      . _Default
      . _Coerce

-- | The JWT payload to sign: a JSON object that contains a JWT Claims Set.
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
    { _sbrKeyId      :: !(Maybe Text)
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

-- | The ID of the key used to sign the blob.
sbrKeyId :: Lens' SignBlobResponse (Maybe Text)
sbrKeyId = lens _sbrKeyId (\ s a -> s{_sbrKeyId = a})

-- | The signed blob.
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
