{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IdentityToolkit.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IdentityToolkit.Types.Product where

import           Network.Google.IdentityToolkit.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'uploadAccountResponseErrorItem' smart constructor.
data UploadAccountResponseErrorItem = UploadAccountResponseErrorItem'
    { _uareiMessage :: !(Maybe Text)
    , _uareiIndex   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UploadAccountResponseErrorItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uareiMessage'
--
-- * 'uareiIndex'
uploadAccountResponseErrorItem
    :: UploadAccountResponseErrorItem
uploadAccountResponseErrorItem =
    UploadAccountResponseErrorItem'
    { _uareiMessage = Nothing
    , _uareiIndex = Nothing
    }

-- | Detailed error message for the account info.
uareiMessage :: Lens' UploadAccountResponseErrorItem (Maybe Text)
uareiMessage
  = lens _uareiMessage (\ s a -> s{_uareiMessage = a})

-- | The index of the malformed account, starting from 0.
uareiIndex :: Lens' UploadAccountResponseErrorItem (Maybe Int32)
uareiIndex
  = lens _uareiIndex (\ s a -> s{_uareiIndex = a}) .
      mapping _Coerce

instance FromJSON UploadAccountResponseErrorItem
         where
        parseJSON
          = withObject "UploadAccountResponseErrorItem"
              (\ o ->
                 UploadAccountResponseErrorItem' <$>
                   (o .:? "message") <*> (o .:? "index"))

instance ToJSON UploadAccountResponseErrorItem where
        toJSON UploadAccountResponseErrorItem'{..}
          = object
              (catMaybes
                 [("message" .=) <$> _uareiMessage,
                  ("index" .=) <$> _uareiIndex])

--
-- /See:/ 'userInfoProviderUserInfoItem' smart constructor.
data UserInfoProviderUserInfoItem = UserInfoProviderUserInfoItem'
    { _uipuiiProviderId  :: !(Maybe Text)
    , _uipuiiEmail       :: !(Maybe Text)
    , _uipuiiPhotoURL    :: !(Maybe Text)
    , _uipuiiRawUserInfo :: !(Maybe Text)
    , _uipuiiFederatedId :: !(Maybe Text)
    , _uipuiiDisplayName :: !(Maybe Text)
    , _uipuiiScreenName  :: !(Maybe Text)
    , _uipuiiRawId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfoProviderUserInfoItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uipuiiProviderId'
--
-- * 'uipuiiEmail'
--
-- * 'uipuiiPhotoURL'
--
-- * 'uipuiiRawUserInfo'
--
-- * 'uipuiiFederatedId'
--
-- * 'uipuiiDisplayName'
--
-- * 'uipuiiScreenName'
--
-- * 'uipuiiRawId'
userInfoProviderUserInfoItem
    :: UserInfoProviderUserInfoItem
userInfoProviderUserInfoItem =
    UserInfoProviderUserInfoItem'
    { _uipuiiProviderId = Nothing
    , _uipuiiEmail = Nothing
    , _uipuiiPhotoURL = Nothing
    , _uipuiiRawUserInfo = Nothing
    , _uipuiiFederatedId = Nothing
    , _uipuiiDisplayName = Nothing
    , _uipuiiScreenName = Nothing
    , _uipuiiRawId = Nothing
    }

-- | The IdP ID. For white listed IdPs it\'s a short domain name, e.g.,
-- google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s
-- the OP identifier.
uipuiiProviderId :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiProviderId
  = lens _uipuiiProviderId
      (\ s a -> s{_uipuiiProviderId = a})

-- | User\'s email at IDP.
uipuiiEmail :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiEmail
  = lens _uipuiiEmail (\ s a -> s{_uipuiiEmail = a})

-- | The user\'s photo url at the IDP.
uipuiiPhotoURL :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiPhotoURL
  = lens _uipuiiPhotoURL
      (\ s a -> s{_uipuiiPhotoURL = a})

-- | Raw IDP-returned user info.
uipuiiRawUserInfo :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiRawUserInfo
  = lens _uipuiiRawUserInfo
      (\ s a -> s{_uipuiiRawUserInfo = a})

-- | User\'s identifier at IDP.
uipuiiFederatedId :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiFederatedId
  = lens _uipuiiFederatedId
      (\ s a -> s{_uipuiiFederatedId = a})

-- | The user\'s display name at the IDP.
uipuiiDisplayName :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiDisplayName
  = lens _uipuiiDisplayName
      (\ s a -> s{_uipuiiDisplayName = a})

-- | User\'s screen name at Twitter or login name at Github.
uipuiiScreenName :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiScreenName
  = lens _uipuiiScreenName
      (\ s a -> s{_uipuiiScreenName = a})

-- | User\'s raw identifier directly returned from IDP.
uipuiiRawId :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiRawId
  = lens _uipuiiRawId (\ s a -> s{_uipuiiRawId = a})

instance FromJSON UserInfoProviderUserInfoItem where
        parseJSON
          = withObject "UserInfoProviderUserInfoItem"
              (\ o ->
                 UserInfoProviderUserInfoItem' <$>
                   (o .:? "providerId") <*> (o .:? "email") <*>
                     (o .:? "photoUrl")
                     <*> (o .:? "rawUserInfo")
                     <*> (o .:? "federatedId")
                     <*> (o .:? "displayName")
                     <*> (o .:? "screenName")
                     <*> (o .:? "rawId"))

instance ToJSON UserInfoProviderUserInfoItem where
        toJSON UserInfoProviderUserInfoItem'{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _uipuiiProviderId,
                  ("email" .=) <$> _uipuiiEmail,
                  ("photoUrl" .=) <$> _uipuiiPhotoURL,
                  ("rawUserInfo" .=) <$> _uipuiiRawUserInfo,
                  ("federatedId" .=) <$> _uipuiiFederatedId,
                  ("displayName" .=) <$> _uipuiiDisplayName,
                  ("screenName" .=) <$> _uipuiiScreenName,
                  ("rawId" .=) <$> _uipuiiRawId])

-- | Response from verifying a custom token
--
-- /See:/ 'verifyCustomTokenResponse' smart constructor.
data VerifyCustomTokenResponse = VerifyCustomTokenResponse'
    { _vctrKind         :: !Text
    , _vctrRefreshToken :: !(Maybe Text)
    , _vctrExpiresIn    :: !(Maybe (Textual Int64))
    , _vctrIdToken      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerifyCustomTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vctrKind'
--
-- * 'vctrRefreshToken'
--
-- * 'vctrExpiresIn'
--
-- * 'vctrIdToken'
verifyCustomTokenResponse
    :: VerifyCustomTokenResponse
verifyCustomTokenResponse =
    VerifyCustomTokenResponse'
    { _vctrKind = "identitytoolkit#VerifyCustomTokenResponse"
    , _vctrRefreshToken = Nothing
    , _vctrExpiresIn = Nothing
    , _vctrIdToken = Nothing
    }

-- | The fixed string \"identitytoolkit#VerifyCustomTokenResponse\".
vctrKind :: Lens' VerifyCustomTokenResponse Text
vctrKind = lens _vctrKind (\ s a -> s{_vctrKind = a})

-- | If idToken is STS id token, then this field will be refresh token.
vctrRefreshToken :: Lens' VerifyCustomTokenResponse (Maybe Text)
vctrRefreshToken
  = lens _vctrRefreshToken
      (\ s a -> s{_vctrRefreshToken = a})

-- | If idToken is STS id token, then this field will be expiration time of
-- STS id token in seconds.
vctrExpiresIn :: Lens' VerifyCustomTokenResponse (Maybe Int64)
vctrExpiresIn
  = lens _vctrExpiresIn
      (\ s a -> s{_vctrExpiresIn = a})
      . mapping _Coerce

-- | The GITKit token for authenticated user.
vctrIdToken :: Lens' VerifyCustomTokenResponse (Maybe Text)
vctrIdToken
  = lens _vctrIdToken (\ s a -> s{_vctrIdToken = a})

instance FromJSON VerifyCustomTokenResponse where
        parseJSON
          = withObject "VerifyCustomTokenResponse"
              (\ o ->
                 VerifyCustomTokenResponse' <$>
                   (o .:? "kind" .!=
                      "identitytoolkit#VerifyCustomTokenResponse")
                     <*> (o .:? "refreshToken")
                     <*> (o .:? "expiresIn")
                     <*> (o .:? "idToken"))

instance ToJSON VerifyCustomTokenResponse where
        toJSON VerifyCustomTokenResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _vctrKind),
                  ("refreshToken" .=) <$> _vctrRefreshToken,
                  ("expiresIn" .=) <$> _vctrExpiresIn,
                  ("idToken" .=) <$> _vctrIdToken])

-- | Template for a single idp configuration.
--
-- /See:/ 'idpConfig' smart constructor.
data IdpConfig = IdpConfig'
    { _icClientId             :: !(Maybe Text)
    , _icEnabled              :: !(Maybe Bool)
    , _icWhiteListedAudiences :: !(Maybe [Text])
    , _icSecret               :: !(Maybe Text)
    , _icExperimentPercent    :: !(Maybe (Textual Int32))
    , _icProvider             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdpConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icClientId'
--
-- * 'icEnabled'
--
-- * 'icWhiteListedAudiences'
--
-- * 'icSecret'
--
-- * 'icExperimentPercent'
--
-- * 'icProvider'
idpConfig
    :: IdpConfig
idpConfig =
    IdpConfig'
    { _icClientId = Nothing
    , _icEnabled = Nothing
    , _icWhiteListedAudiences = Nothing
    , _icSecret = Nothing
    , _icExperimentPercent = Nothing
    , _icProvider = Nothing
    }

-- | OAuth2 client ID.
icClientId :: Lens' IdpConfig (Maybe Text)
icClientId
  = lens _icClientId (\ s a -> s{_icClientId = a})

-- | Whether this IDP is enabled.
icEnabled :: Lens' IdpConfig (Maybe Bool)
icEnabled
  = lens _icEnabled (\ s a -> s{_icEnabled = a})

-- | Whitelisted client IDs for audience check.
icWhiteListedAudiences :: Lens' IdpConfig [Text]
icWhiteListedAudiences
  = lens _icWhiteListedAudiences
      (\ s a -> s{_icWhiteListedAudiences = a})
      . _Default
      . _Coerce

-- | OAuth2 client secret.
icSecret :: Lens' IdpConfig (Maybe Text)
icSecret = lens _icSecret (\ s a -> s{_icSecret = a})

-- | Percent of users who will be prompted\/redirected federated login for
-- this IDP.
icExperimentPercent :: Lens' IdpConfig (Maybe Int32)
icExperimentPercent
  = lens _icExperimentPercent
      (\ s a -> s{_icExperimentPercent = a})
      . mapping _Coerce

-- | OAuth2 provider.
icProvider :: Lens' IdpConfig (Maybe Text)
icProvider
  = lens _icProvider (\ s a -> s{_icProvider = a})

instance FromJSON IdpConfig where
        parseJSON
          = withObject "IdpConfig"
              (\ o ->
                 IdpConfig' <$>
                   (o .:? "clientId") <*> (o .:? "enabled") <*>
                     (o .:? "whitelistedAudiences" .!= mempty)
                     <*> (o .:? "secret")
                     <*> (o .:? "experimentPercent")
                     <*> (o .:? "provider"))

instance ToJSON IdpConfig where
        toJSON IdpConfig'{..}
          = object
              (catMaybes
                 [("clientId" .=) <$> _icClientId,
                  ("enabled" .=) <$> _icEnabled,
                  ("whitelistedAudiences" .=) <$>
                    _icWhiteListedAudiences,
                  ("secret" .=) <$> _icSecret,
                  ("experimentPercent" .=) <$> _icExperimentPercent,
                  ("provider" .=) <$> _icProvider])

-- | Template for an individual account info.
--
-- /See:/ 'userInfo' smart constructor.
data UserInfo = UserInfo'
    { _uiEmail             :: !(Maybe Text)
    , _uiLastLoginAt       :: !(Maybe (Textual Int64))
    , _uiPhotoURL          :: !(Maybe Text)
    , _uiCreatedAt         :: !(Maybe (Textual Int64))
    , _uiDisabled          :: !(Maybe Bool)
    , _uiCustomAuth        :: !(Maybe Bool)
    , _uiProviderUserInfo  :: !(Maybe [UserInfoProviderUserInfoItem])
    , _uiValidSince        :: !(Maybe (Textual Int64))
    , _uiPasswordUpdatedAt :: !(Maybe (Textual Double))
    , _uiVersion           :: !(Maybe (Textual Int32))
    , _uiEmailVerified     :: !(Maybe Bool)
    , _uiSalt              :: !(Maybe Base64)
    , _uiDisplayName       :: !(Maybe Text)
    , _uiPasswordHash      :: !(Maybe Base64)
    , _uiLocalId           :: !(Maybe Text)
    , _uiScreenName        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiEmail'
--
-- * 'uiLastLoginAt'
--
-- * 'uiPhotoURL'
--
-- * 'uiCreatedAt'
--
-- * 'uiDisabled'
--
-- * 'uiCustomAuth'
--
-- * 'uiProviderUserInfo'
--
-- * 'uiValidSince'
--
-- * 'uiPasswordUpdatedAt'
--
-- * 'uiVersion'
--
-- * 'uiEmailVerified'
--
-- * 'uiSalt'
--
-- * 'uiDisplayName'
--
-- * 'uiPasswordHash'
--
-- * 'uiLocalId'
--
-- * 'uiScreenName'
userInfo
    :: UserInfo
userInfo =
    UserInfo'
    { _uiEmail = Nothing
    , _uiLastLoginAt = Nothing
    , _uiPhotoURL = Nothing
    , _uiCreatedAt = Nothing
    , _uiDisabled = Nothing
    , _uiCustomAuth = Nothing
    , _uiProviderUserInfo = Nothing
    , _uiValidSince = Nothing
    , _uiPasswordUpdatedAt = Nothing
    , _uiVersion = Nothing
    , _uiEmailVerified = Nothing
    , _uiSalt = Nothing
    , _uiDisplayName = Nothing
    , _uiPasswordHash = Nothing
    , _uiLocalId = Nothing
    , _uiScreenName = Nothing
    }

-- | The email of the user.
uiEmail :: Lens' UserInfo (Maybe Text)
uiEmail = lens _uiEmail (\ s a -> s{_uiEmail = a})

-- | last login timestamp.
uiLastLoginAt :: Lens' UserInfo (Maybe Int64)
uiLastLoginAt
  = lens _uiLastLoginAt
      (\ s a -> s{_uiLastLoginAt = a})
      . mapping _Coerce

-- | The URL of the user profile photo.
uiPhotoURL :: Lens' UserInfo (Maybe Text)
uiPhotoURL
  = lens _uiPhotoURL (\ s a -> s{_uiPhotoURL = a})

-- | User creation timestamp.
uiCreatedAt :: Lens' UserInfo (Maybe Int64)
uiCreatedAt
  = lens _uiCreatedAt (\ s a -> s{_uiCreatedAt = a}) .
      mapping _Coerce

-- | Whether the user is disabled.
uiDisabled :: Lens' UserInfo (Maybe Bool)
uiDisabled
  = lens _uiDisabled (\ s a -> s{_uiDisabled = a})

-- | Whether the user is authenticated by the developer.
uiCustomAuth :: Lens' UserInfo (Maybe Bool)
uiCustomAuth
  = lens _uiCustomAuth (\ s a -> s{_uiCustomAuth = a})

-- | The IDP of the user.
uiProviderUserInfo :: Lens' UserInfo [UserInfoProviderUserInfoItem]
uiProviderUserInfo
  = lens _uiProviderUserInfo
      (\ s a -> s{_uiProviderUserInfo = a})
      . _Default
      . _Coerce

-- | Timestamp in seconds for valid login token.
uiValidSince :: Lens' UserInfo (Maybe Int64)
uiValidSince
  = lens _uiValidSince (\ s a -> s{_uiValidSince = a})
      . mapping _Coerce

-- | The timestamp when the password was last updated.
uiPasswordUpdatedAt :: Lens' UserInfo (Maybe Double)
uiPasswordUpdatedAt
  = lens _uiPasswordUpdatedAt
      (\ s a -> s{_uiPasswordUpdatedAt = a})
      . mapping _Coerce

-- | Version of the user\'s password.
uiVersion :: Lens' UserInfo (Maybe Int32)
uiVersion
  = lens _uiVersion (\ s a -> s{_uiVersion = a}) .
      mapping _Coerce

-- | Whether the email has been verified.
uiEmailVerified :: Lens' UserInfo (Maybe Bool)
uiEmailVerified
  = lens _uiEmailVerified
      (\ s a -> s{_uiEmailVerified = a})

-- | The user\'s password salt.
uiSalt :: Lens' UserInfo (Maybe ByteString)
uiSalt
  = lens _uiSalt (\ s a -> s{_uiSalt = a}) .
      mapping _Base64

-- | The name of the user.
uiDisplayName :: Lens' UserInfo (Maybe Text)
uiDisplayName
  = lens _uiDisplayName
      (\ s a -> s{_uiDisplayName = a})

-- | The user\'s hashed password.
uiPasswordHash :: Lens' UserInfo (Maybe ByteString)
uiPasswordHash
  = lens _uiPasswordHash
      (\ s a -> s{_uiPasswordHash = a})
      . mapping _Base64

-- | The local ID of the user.
uiLocalId :: Lens' UserInfo (Maybe Text)
uiLocalId
  = lens _uiLocalId (\ s a -> s{_uiLocalId = a})

-- | User\'s screen name at Twitter or login name at Github.
uiScreenName :: Lens' UserInfo (Maybe Text)
uiScreenName
  = lens _uiScreenName (\ s a -> s{_uiScreenName = a})

instance FromJSON UserInfo where
        parseJSON
          = withObject "UserInfo"
              (\ o ->
                 UserInfo' <$>
                   (o .:? "email") <*> (o .:? "lastLoginAt") <*>
                     (o .:? "photoUrl")
                     <*> (o .:? "createdAt")
                     <*> (o .:? "disabled")
                     <*> (o .:? "customAuth")
                     <*> (o .:? "providerUserInfo" .!= mempty)
                     <*> (o .:? "validSince")
                     <*> (o .:? "passwordUpdatedAt")
                     <*> (o .:? "version")
                     <*> (o .:? "emailVerified")
                     <*> (o .:? "salt")
                     <*> (o .:? "displayName")
                     <*> (o .:? "passwordHash")
                     <*> (o .:? "localId")
                     <*> (o .:? "screenName"))

instance ToJSON UserInfo where
        toJSON UserInfo'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _uiEmail,
                  ("lastLoginAt" .=) <$> _uiLastLoginAt,
                  ("photoUrl" .=) <$> _uiPhotoURL,
                  ("createdAt" .=) <$> _uiCreatedAt,
                  ("disabled" .=) <$> _uiDisabled,
                  ("customAuth" .=) <$> _uiCustomAuth,
                  ("providerUserInfo" .=) <$> _uiProviderUserInfo,
                  ("validSince" .=) <$> _uiValidSince,
                  ("passwordUpdatedAt" .=) <$> _uiPasswordUpdatedAt,
                  ("version" .=) <$> _uiVersion,
                  ("emailVerified" .=) <$> _uiEmailVerified,
                  ("salt" .=) <$> _uiSalt,
                  ("displayName" .=) <$> _uiDisplayName,
                  ("passwordHash" .=) <$> _uiPasswordHash,
                  ("localId" .=) <$> _uiLocalId,
                  ("screenName" .=) <$> _uiScreenName])

-- | Response of setting the project configuration.
--
-- /See:/ 'identitytoolkitRelyingPartySetProjectConfigResponse' smart constructor.
newtype IdentitytoolkitRelyingPartySetProjectConfigResponse = IdentitytoolkitRelyingPartySetProjectConfigResponse'
    { _irpspcrProjectId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartySetProjectConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpspcrProjectId'
identitytoolkitRelyingPartySetProjectConfigResponse
    :: IdentitytoolkitRelyingPartySetProjectConfigResponse
identitytoolkitRelyingPartySetProjectConfigResponse =
    IdentitytoolkitRelyingPartySetProjectConfigResponse'
    { _irpspcrProjectId = Nothing
    }

-- | Project ID of the relying party.
irpspcrProjectId :: Lens' IdentitytoolkitRelyingPartySetProjectConfigResponse (Maybe Text)
irpspcrProjectId
  = lens _irpspcrProjectId
      (\ s a -> s{_irpspcrProjectId = a})

instance FromJSON
         IdentitytoolkitRelyingPartySetProjectConfigResponse
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartySetProjectConfigResponse"
              (\ o ->
                 IdentitytoolkitRelyingPartySetProjectConfigResponse'
                   <$> (o .:? "projectId"))

instance ToJSON
         IdentitytoolkitRelyingPartySetProjectConfigResponse
         where
        toJSON
          IdentitytoolkitRelyingPartySetProjectConfigResponse'{..}
          = object
              (catMaybes [("projectId" .=) <$> _irpspcrProjectId])

-- | Request to verify a custom token
--
-- /See:/ 'identitytoolkitRelyingPartyVerifyCustomTokenRequest' smart constructor.
data IdentitytoolkitRelyingPartyVerifyCustomTokenRequest = IdentitytoolkitRelyingPartyVerifyCustomTokenRequest'
    { _irpvctrInstanceId             :: !(Maybe Text)
    , _irpvctrDelegatedProjectNumber :: !(Maybe (Textual Int64))
    , _irpvctrToken                  :: !(Maybe Text)
    , _irpvctrReturnSecureToken      :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyVerifyCustomTokenRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpvctrInstanceId'
--
-- * 'irpvctrDelegatedProjectNumber'
--
-- * 'irpvctrToken'
--
-- * 'irpvctrReturnSecureToken'
identitytoolkitRelyingPartyVerifyCustomTokenRequest
    :: IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
identitytoolkitRelyingPartyVerifyCustomTokenRequest =
    IdentitytoolkitRelyingPartyVerifyCustomTokenRequest'
    { _irpvctrInstanceId = Nothing
    , _irpvctrDelegatedProjectNumber = Nothing
    , _irpvctrToken = Nothing
    , _irpvctrReturnSecureToken = Nothing
    }

-- | Instance id token of the app.
irpvctrInstanceId :: Lens' IdentitytoolkitRelyingPartyVerifyCustomTokenRequest (Maybe Text)
irpvctrInstanceId
  = lens _irpvctrInstanceId
      (\ s a -> s{_irpvctrInstanceId = a})

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
irpvctrDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartyVerifyCustomTokenRequest (Maybe Int64)
irpvctrDelegatedProjectNumber
  = lens _irpvctrDelegatedProjectNumber
      (\ s a -> s{_irpvctrDelegatedProjectNumber = a})
      . mapping _Coerce

-- | The custom token to verify
irpvctrToken :: Lens' IdentitytoolkitRelyingPartyVerifyCustomTokenRequest (Maybe Text)
irpvctrToken
  = lens _irpvctrToken (\ s a -> s{_irpvctrToken = a})

-- | Whether return sts id token and refresh token instead of gitkit token.
irpvctrReturnSecureToken :: Lens' IdentitytoolkitRelyingPartyVerifyCustomTokenRequest (Maybe Bool)
irpvctrReturnSecureToken
  = lens _irpvctrReturnSecureToken
      (\ s a -> s{_irpvctrReturnSecureToken = a})

instance FromJSON
         IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyVerifyCustomTokenRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyVerifyCustomTokenRequest'
                   <$>
                   (o .:? "instanceId") <*>
                     (o .:? "delegatedProjectNumber")
                     <*> (o .:? "token")
                     <*> (o .:? "returnSecureToken"))

instance ToJSON
         IdentitytoolkitRelyingPartyVerifyCustomTokenRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyVerifyCustomTokenRequest'{..}
          = object
              (catMaybes
                 [("instanceId" .=) <$> _irpvctrInstanceId,
                  ("delegatedProjectNumber" .=) <$>
                    _irpvctrDelegatedProjectNumber,
                  ("token" .=) <$> _irpvctrToken,
                  ("returnSecureToken" .=) <$>
                    _irpvctrReturnSecureToken])

--
-- /See:/ 'setAccountInfoResponseProviderUserInfoItem' smart constructor.
data SetAccountInfoResponseProviderUserInfoItem = SetAccountInfoResponseProviderUserInfoItem'
    { _sairpuiiProviderId  :: !(Maybe Text)
    , _sairpuiiPhotoURL    :: !(Maybe Text)
    , _sairpuiiFederatedId :: !(Maybe Text)
    , _sairpuiiDisplayName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetAccountInfoResponseProviderUserInfoItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sairpuiiProviderId'
--
-- * 'sairpuiiPhotoURL'
--
-- * 'sairpuiiFederatedId'
--
-- * 'sairpuiiDisplayName'
setAccountInfoResponseProviderUserInfoItem
    :: SetAccountInfoResponseProviderUserInfoItem
setAccountInfoResponseProviderUserInfoItem =
    SetAccountInfoResponseProviderUserInfoItem'
    { _sairpuiiProviderId = Nothing
    , _sairpuiiPhotoURL = Nothing
    , _sairpuiiFederatedId = Nothing
    , _sairpuiiDisplayName = Nothing
    }

-- | The IdP ID. For whitelisted IdPs it\'s a short domain name, e.g.,
-- google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s
-- the OP identifier.
sairpuiiProviderId :: Lens' SetAccountInfoResponseProviderUserInfoItem (Maybe Text)
sairpuiiProviderId
  = lens _sairpuiiProviderId
      (\ s a -> s{_sairpuiiProviderId = a})

-- | The user\'s photo url at the IDP.
sairpuiiPhotoURL :: Lens' SetAccountInfoResponseProviderUserInfoItem (Maybe Text)
sairpuiiPhotoURL
  = lens _sairpuiiPhotoURL
      (\ s a -> s{_sairpuiiPhotoURL = a})

-- | User\'s identifier at IDP.
sairpuiiFederatedId :: Lens' SetAccountInfoResponseProviderUserInfoItem (Maybe Text)
sairpuiiFederatedId
  = lens _sairpuiiFederatedId
      (\ s a -> s{_sairpuiiFederatedId = a})

-- | The user\'s display name at the IDP.
sairpuiiDisplayName :: Lens' SetAccountInfoResponseProviderUserInfoItem (Maybe Text)
sairpuiiDisplayName
  = lens _sairpuiiDisplayName
      (\ s a -> s{_sairpuiiDisplayName = a})

instance FromJSON
         SetAccountInfoResponseProviderUserInfoItem where
        parseJSON
          = withObject
              "SetAccountInfoResponseProviderUserInfoItem"
              (\ o ->
                 SetAccountInfoResponseProviderUserInfoItem' <$>
                   (o .:? "providerId") <*> (o .:? "photoUrl") <*>
                     (o .:? "federatedId")
                     <*> (o .:? "displayName"))

instance ToJSON
         SetAccountInfoResponseProviderUserInfoItem where
        toJSON
          SetAccountInfoResponseProviderUserInfoItem'{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _sairpuiiProviderId,
                  ("photoUrl" .=) <$> _sairpuiiPhotoURL,
                  ("federatedId" .=) <$> _sairpuiiFederatedId,
                  ("displayName" .=) <$> _sairpuiiDisplayName])

-- | The query parameter that client can customize by themselves in auth url.
-- The following parameters are reserved for server so that they cannot be
-- customized by clients: client_id, response_type, scope, redirect_uri,
-- state, oauth_token.
--
-- /See:/ 'identitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter' smart constructor.
newtype IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter = IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter'
    { _irpcaurcpAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpcaurcpAddtional'
identitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
    :: HashMap Text Text -- ^ 'irpcaurcpAddtional'
    -> IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
identitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter pIrpcaurcpAddtional_ =
    IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter'
    { _irpcaurcpAddtional = _Coerce # pIrpcaurcpAddtional_
    }

-- | The customized query parameter.
irpcaurcpAddtional :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter (HashMap Text Text)
irpcaurcpAddtional
  = lens _irpcaurcpAddtional
      (\ s a -> s{_irpcaurcpAddtional = a})
      . _Coerce

instance FromJSON
         IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter"
              (\ o ->
                 IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter'
                   <$> (parseJSONObject o))

instance ToJSON
         IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter
         where
        toJSON = toJSON . _irpcaurcpAddtional

-- | Request to verify the password.
--
-- /See:/ 'identitytoolkitRelyingPartyVerifyPasswordRequest' smart constructor.
data IdentitytoolkitRelyingPartyVerifyPasswordRequest = IdentitytoolkitRelyingPartyVerifyPasswordRequest'
    { _irpvprEmail                  :: !(Maybe Text)
    , _irpvprInstanceId             :: !(Maybe Text)
    , _irpvprCaptchaChallenge       :: !(Maybe Text)
    , _irpvprDelegatedProjectNumber :: !(Maybe (Textual Int64))
    , _irpvprReturnSecureToken      :: !(Maybe Bool)
    , _irpvprPassword               :: !(Maybe Text)
    , _irpvprCaptchaResponse        :: !(Maybe Text)
    , _irpvprIdToken                :: !(Maybe Text)
    , _irpvprPendingIdToken         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyVerifyPasswordRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpvprEmail'
--
-- * 'irpvprInstanceId'
--
-- * 'irpvprCaptchaChallenge'
--
-- * 'irpvprDelegatedProjectNumber'
--
-- * 'irpvprReturnSecureToken'
--
-- * 'irpvprPassword'
--
-- * 'irpvprCaptchaResponse'
--
-- * 'irpvprIdToken'
--
-- * 'irpvprPendingIdToken'
identitytoolkitRelyingPartyVerifyPasswordRequest
    :: IdentitytoolkitRelyingPartyVerifyPasswordRequest
identitytoolkitRelyingPartyVerifyPasswordRequest =
    IdentitytoolkitRelyingPartyVerifyPasswordRequest'
    { _irpvprEmail = Nothing
    , _irpvprInstanceId = Nothing
    , _irpvprCaptchaChallenge = Nothing
    , _irpvprDelegatedProjectNumber = Nothing
    , _irpvprReturnSecureToken = Nothing
    , _irpvprPassword = Nothing
    , _irpvprCaptchaResponse = Nothing
    , _irpvprIdToken = Nothing
    , _irpvprPendingIdToken = Nothing
    }

-- | The email of the user.
irpvprEmail :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprEmail
  = lens _irpvprEmail (\ s a -> s{_irpvprEmail = a})

-- | Instance id token of the app.
irpvprInstanceId :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprInstanceId
  = lens _irpvprInstanceId
      (\ s a -> s{_irpvprInstanceId = a})

-- | The captcha challenge.
irpvprCaptchaChallenge :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprCaptchaChallenge
  = lens _irpvprCaptchaChallenge
      (\ s a -> s{_irpvprCaptchaChallenge = a})

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
irpvprDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Int64)
irpvprDelegatedProjectNumber
  = lens _irpvprDelegatedProjectNumber
      (\ s a -> s{_irpvprDelegatedProjectNumber = a})
      . mapping _Coerce

-- | Whether return sts id token and refresh token instead of gitkit token.
irpvprReturnSecureToken :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Bool)
irpvprReturnSecureToken
  = lens _irpvprReturnSecureToken
      (\ s a -> s{_irpvprReturnSecureToken = a})

-- | The password inputed by the user.
irpvprPassword :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprPassword
  = lens _irpvprPassword
      (\ s a -> s{_irpvprPassword = a})

-- | Response to the captcha.
irpvprCaptchaResponse :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprCaptchaResponse
  = lens _irpvprCaptchaResponse
      (\ s a -> s{_irpvprCaptchaResponse = a})

-- | The GITKit token of the authenticated user.
irpvprIdToken :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprIdToken
  = lens _irpvprIdToken
      (\ s a -> s{_irpvprIdToken = a})

-- | The GITKit token for the non-trusted IDP, which is to be confirmed by
-- the user.
irpvprPendingIdToken :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprPendingIdToken
  = lens _irpvprPendingIdToken
      (\ s a -> s{_irpvprPendingIdToken = a})

instance FromJSON
         IdentitytoolkitRelyingPartyVerifyPasswordRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyVerifyPasswordRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyVerifyPasswordRequest' <$>
                   (o .:? "email") <*> (o .:? "instanceId") <*>
                     (o .:? "captchaChallenge")
                     <*> (o .:? "delegatedProjectNumber")
                     <*> (o .:? "returnSecureToken")
                     <*> (o .:? "password")
                     <*> (o .:? "captchaResponse")
                     <*> (o .:? "idToken")
                     <*> (o .:? "pendingIdToken"))

instance ToJSON
         IdentitytoolkitRelyingPartyVerifyPasswordRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyVerifyPasswordRequest'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irpvprEmail,
                  ("instanceId" .=) <$> _irpvprInstanceId,
                  ("captchaChallenge" .=) <$> _irpvprCaptchaChallenge,
                  ("delegatedProjectNumber" .=) <$>
                    _irpvprDelegatedProjectNumber,
                  ("returnSecureToken" .=) <$>
                    _irpvprReturnSecureToken,
                  ("password" .=) <$> _irpvprPassword,
                  ("captchaResponse" .=) <$> _irpvprCaptchaResponse,
                  ("idToken" .=) <$> _irpvprIdToken,
                  ("pendingIdToken" .=) <$> _irpvprPendingIdToken])

-- | Response of signing up new user, creating anonymous user or anonymous
-- user reauth.
--
-- /See:/ 'signupNewUserResponse' smart constructor.
data SignupNewUserResponse = SignupNewUserResponse'
    { _snurEmail        :: !(Maybe Text)
    , _snurKind         :: !Text
    , _snurRefreshToken :: !(Maybe Text)
    , _snurExpiresIn    :: !(Maybe (Textual Int64))
    , _snurDisplayName  :: !(Maybe Text)
    , _snurLocalId      :: !(Maybe Text)
    , _snurIdToken      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SignupNewUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snurEmail'
--
-- * 'snurKind'
--
-- * 'snurRefreshToken'
--
-- * 'snurExpiresIn'
--
-- * 'snurDisplayName'
--
-- * 'snurLocalId'
--
-- * 'snurIdToken'
signupNewUserResponse
    :: SignupNewUserResponse
signupNewUserResponse =
    SignupNewUserResponse'
    { _snurEmail = Nothing
    , _snurKind = "identitytoolkit#SignupNewUserResponse"
    , _snurRefreshToken = Nothing
    , _snurExpiresIn = Nothing
    , _snurDisplayName = Nothing
    , _snurLocalId = Nothing
    , _snurIdToken = Nothing
    }

-- | The email of the user.
snurEmail :: Lens' SignupNewUserResponse (Maybe Text)
snurEmail
  = lens _snurEmail (\ s a -> s{_snurEmail = a})

-- | The fixed string \"identitytoolkit#SignupNewUserResponse\".
snurKind :: Lens' SignupNewUserResponse Text
snurKind = lens _snurKind (\ s a -> s{_snurKind = a})

-- | If idToken is STS id token, then this field will be refresh token.
snurRefreshToken :: Lens' SignupNewUserResponse (Maybe Text)
snurRefreshToken
  = lens _snurRefreshToken
      (\ s a -> s{_snurRefreshToken = a})

-- | If idToken is STS id token, then this field will be expiration time of
-- STS id token in seconds.
snurExpiresIn :: Lens' SignupNewUserResponse (Maybe Int64)
snurExpiresIn
  = lens _snurExpiresIn
      (\ s a -> s{_snurExpiresIn = a})
      . mapping _Coerce

-- | The name of the user.
snurDisplayName :: Lens' SignupNewUserResponse (Maybe Text)
snurDisplayName
  = lens _snurDisplayName
      (\ s a -> s{_snurDisplayName = a})

-- | The RP local ID of the user.
snurLocalId :: Lens' SignupNewUserResponse (Maybe Text)
snurLocalId
  = lens _snurLocalId (\ s a -> s{_snurLocalId = a})

-- | The Gitkit id token to login the newly sign up user.
snurIdToken :: Lens' SignupNewUserResponse (Maybe Text)
snurIdToken
  = lens _snurIdToken (\ s a -> s{_snurIdToken = a})

instance FromJSON SignupNewUserResponse where
        parseJSON
          = withObject "SignupNewUserResponse"
              (\ o ->
                 SignupNewUserResponse' <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#SignupNewUserResponse")
                     <*> (o .:? "refreshToken")
                     <*> (o .:? "expiresIn")
                     <*> (o .:? "displayName")
                     <*> (o .:? "localId")
                     <*> (o .:? "idToken"))

instance ToJSON SignupNewUserResponse where
        toJSON SignupNewUserResponse'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _snurEmail,
                  Just ("kind" .= _snurKind),
                  ("refreshToken" .=) <$> _snurRefreshToken,
                  ("expiresIn" .=) <$> _snurExpiresIn,
                  ("displayName" .=) <$> _snurDisplayName,
                  ("localId" .=) <$> _snurLocalId,
                  ("idToken" .=) <$> _snurIdToken])

-- | Request to set the project configuration.
--
-- /See:/ 'identitytoolkitRelyingPartySetProjectConfigRequest' smart constructor.
data IdentitytoolkitRelyingPartySetProjectConfigRequest = IdentitytoolkitRelyingPartySetProjectConfigRequest'
    { _irpspcrAuthorizedDomains           :: !(Maybe [Text])
    , _irpspcrAPIKey                      :: !(Maybe Text)
    , _irpspcrIdpConfig                   :: !(Maybe [IdpConfig])
    , _irpspcrChangeEmailTemplate         :: !(Maybe EmailTemplate)
    , _irpspcrDelegatedProjectNumber      :: !(Maybe (Textual Int64))
    , _irpspcrVerifyEmailTemplate         :: !(Maybe EmailTemplate)
    , _irpspcrEnableAnonymousUser         :: !(Maybe Bool)
    , _irpspcrLegacyResetPasswordTemplate :: !(Maybe EmailTemplate)
    , _irpspcrAllowPasswordUser           :: !(Maybe Bool)
    , _irpspcrResetPasswordTemplate       :: !(Maybe EmailTemplate)
    , _irpspcrUseEmailSending             :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartySetProjectConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpspcrAuthorizedDomains'
--
-- * 'irpspcrAPIKey'
--
-- * 'irpspcrIdpConfig'
--
-- * 'irpspcrChangeEmailTemplate'
--
-- * 'irpspcrDelegatedProjectNumber'
--
-- * 'irpspcrVerifyEmailTemplate'
--
-- * 'irpspcrEnableAnonymousUser'
--
-- * 'irpspcrLegacyResetPasswordTemplate'
--
-- * 'irpspcrAllowPasswordUser'
--
-- * 'irpspcrResetPasswordTemplate'
--
-- * 'irpspcrUseEmailSending'
identitytoolkitRelyingPartySetProjectConfigRequest
    :: IdentitytoolkitRelyingPartySetProjectConfigRequest
identitytoolkitRelyingPartySetProjectConfigRequest =
    IdentitytoolkitRelyingPartySetProjectConfigRequest'
    { _irpspcrAuthorizedDomains = Nothing
    , _irpspcrAPIKey = Nothing
    , _irpspcrIdpConfig = Nothing
    , _irpspcrChangeEmailTemplate = Nothing
    , _irpspcrDelegatedProjectNumber = Nothing
    , _irpspcrVerifyEmailTemplate = Nothing
    , _irpspcrEnableAnonymousUser = Nothing
    , _irpspcrLegacyResetPasswordTemplate = Nothing
    , _irpspcrAllowPasswordUser = Nothing
    , _irpspcrResetPasswordTemplate = Nothing
    , _irpspcrUseEmailSending = Nothing
    }

-- | Authorized domains for widget redirect.
irpspcrAuthorizedDomains :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest [Text]
irpspcrAuthorizedDomains
  = lens _irpspcrAuthorizedDomains
      (\ s a -> s{_irpspcrAuthorizedDomains = a})
      . _Default
      . _Coerce

-- | Browser API key, needed when making http request to Apiary.
irpspcrAPIKey :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe Text)
irpspcrAPIKey
  = lens _irpspcrAPIKey
      (\ s a -> s{_irpspcrAPIKey = a})

-- | Oauth2 provider configuration.
irpspcrIdpConfig :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest [IdpConfig]
irpspcrIdpConfig
  = lens _irpspcrIdpConfig
      (\ s a -> s{_irpspcrIdpConfig = a})
      . _Default
      . _Coerce

-- | Change email template.
irpspcrChangeEmailTemplate :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe EmailTemplate)
irpspcrChangeEmailTemplate
  = lens _irpspcrChangeEmailTemplate
      (\ s a -> s{_irpspcrChangeEmailTemplate = a})

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
irpspcrDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe Int64)
irpspcrDelegatedProjectNumber
  = lens _irpspcrDelegatedProjectNumber
      (\ s a -> s{_irpspcrDelegatedProjectNumber = a})
      . mapping _Coerce

-- | Verify email template.
irpspcrVerifyEmailTemplate :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe EmailTemplate)
irpspcrVerifyEmailTemplate
  = lens _irpspcrVerifyEmailTemplate
      (\ s a -> s{_irpspcrVerifyEmailTemplate = a})

-- | Whether to enable anonymous user.
irpspcrEnableAnonymousUser :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe Bool)
irpspcrEnableAnonymousUser
  = lens _irpspcrEnableAnonymousUser
      (\ s a -> s{_irpspcrEnableAnonymousUser = a})

-- | Legacy reset password email template.
irpspcrLegacyResetPasswordTemplate :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe EmailTemplate)
irpspcrLegacyResetPasswordTemplate
  = lens _irpspcrLegacyResetPasswordTemplate
      (\ s a -> s{_irpspcrLegacyResetPasswordTemplate = a})

-- | Whether to allow password user sign in or sign up.
irpspcrAllowPasswordUser :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe Bool)
irpspcrAllowPasswordUser
  = lens _irpspcrAllowPasswordUser
      (\ s a -> s{_irpspcrAllowPasswordUser = a})

-- | Reset password email template.
irpspcrResetPasswordTemplate :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe EmailTemplate)
irpspcrResetPasswordTemplate
  = lens _irpspcrResetPasswordTemplate
      (\ s a -> s{_irpspcrResetPasswordTemplate = a})

-- | Whether to use email sending provided by Firebear.
irpspcrUseEmailSending :: Lens' IdentitytoolkitRelyingPartySetProjectConfigRequest (Maybe Bool)
irpspcrUseEmailSending
  = lens _irpspcrUseEmailSending
      (\ s a -> s{_irpspcrUseEmailSending = a})

instance FromJSON
         IdentitytoolkitRelyingPartySetProjectConfigRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartySetProjectConfigRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartySetProjectConfigRequest'
                   <$>
                   (o .:? "authorizedDomains" .!= mempty) <*>
                     (o .:? "apiKey")
                     <*> (o .:? "idpConfig" .!= mempty)
                     <*> (o .:? "changeEmailTemplate")
                     <*> (o .:? "delegatedProjectNumber")
                     <*> (o .:? "verifyEmailTemplate")
                     <*> (o .:? "enableAnonymousUser")
                     <*> (o .:? "legacyResetPasswordTemplate")
                     <*> (o .:? "allowPasswordUser")
                     <*> (o .:? "resetPasswordTemplate")
                     <*> (o .:? "useEmailSending"))

instance ToJSON
         IdentitytoolkitRelyingPartySetProjectConfigRequest
         where
        toJSON
          IdentitytoolkitRelyingPartySetProjectConfigRequest'{..}
          = object
              (catMaybes
                 [("authorizedDomains" .=) <$>
                    _irpspcrAuthorizedDomains,
                  ("apiKey" .=) <$> _irpspcrAPIKey,
                  ("idpConfig" .=) <$> _irpspcrIdpConfig,
                  ("changeEmailTemplate" .=) <$>
                    _irpspcrChangeEmailTemplate,
                  ("delegatedProjectNumber" .=) <$>
                    _irpspcrDelegatedProjectNumber,
                  ("verifyEmailTemplate" .=) <$>
                    _irpspcrVerifyEmailTemplate,
                  ("enableAnonymousUser" .=) <$>
                    _irpspcrEnableAnonymousUser,
                  ("legacyResetPasswordTemplate" .=) <$>
                    _irpspcrLegacyResetPasswordTemplate,
                  ("allowPasswordUser" .=) <$>
                    _irpspcrAllowPasswordUser,
                  ("resetPasswordTemplate" .=) <$>
                    _irpspcrResetPasswordTemplate,
                  ("useEmailSending" .=) <$> _irpspcrUseEmailSending])

-- | Request to set the account information.
--
-- /See:/ 'identitytoolkitRelyingPartySetAccountInfoRequest' smart constructor.
data IdentitytoolkitRelyingPartySetAccountInfoRequest = IdentitytoolkitRelyingPartySetAccountInfoRequest'
    { _irpsairUpgradeToFederatedLogin :: !(Maybe Bool)
    , _irpsairEmail                   :: !(Maybe Text)
    , _irpsairInstanceId              :: !(Maybe Text)
    , _irpsairLastLoginAt             :: !(Maybe (Textual Int64))
    , _irpsairPhotoURL                :: !(Maybe Text)
    , _irpsairCaptchaChallenge        :: !(Maybe Text)
    , _irpsairCreatedAt               :: !(Maybe (Textual Int64))
    , _irpsairDelegatedProjectNumber  :: !(Maybe (Textual Int64))
    , _irpsairDeleteAttribute         :: !(Maybe [Text])
    , _irpsairDeleteProvider          :: !(Maybe [Text])
    , _irpsairReturnSecureToken       :: !(Maybe Bool)
    , _irpsairValidSince              :: !(Maybe (Textual Int64))
    , _irpsairOOBCode                 :: !(Maybe Text)
    , _irpsairPassword                :: !(Maybe Text)
    , _irpsairCaptchaResponse         :: !(Maybe Text)
    , _irpsairEmailVerified           :: !(Maybe Bool)
    , _irpsairDisplayName             :: !(Maybe Text)
    , _irpsairDisableUser             :: !(Maybe Bool)
    , _irpsairLocalId                 :: !(Maybe Text)
    , _irpsairIdToken                 :: !(Maybe Text)
    , _irpsairProvider                :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartySetAccountInfoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpsairUpgradeToFederatedLogin'
--
-- * 'irpsairEmail'
--
-- * 'irpsairInstanceId'
--
-- * 'irpsairLastLoginAt'
--
-- * 'irpsairPhotoURL'
--
-- * 'irpsairCaptchaChallenge'
--
-- * 'irpsairCreatedAt'
--
-- * 'irpsairDelegatedProjectNumber'
--
-- * 'irpsairDeleteAttribute'
--
-- * 'irpsairDeleteProvider'
--
-- * 'irpsairReturnSecureToken'
--
-- * 'irpsairValidSince'
--
-- * 'irpsairOOBCode'
--
-- * 'irpsairPassword'
--
-- * 'irpsairCaptchaResponse'
--
-- * 'irpsairEmailVerified'
--
-- * 'irpsairDisplayName'
--
-- * 'irpsairDisableUser'
--
-- * 'irpsairLocalId'
--
-- * 'irpsairIdToken'
--
-- * 'irpsairProvider'
identitytoolkitRelyingPartySetAccountInfoRequest
    :: IdentitytoolkitRelyingPartySetAccountInfoRequest
identitytoolkitRelyingPartySetAccountInfoRequest =
    IdentitytoolkitRelyingPartySetAccountInfoRequest'
    { _irpsairUpgradeToFederatedLogin = Nothing
    , _irpsairEmail = Nothing
    , _irpsairInstanceId = Nothing
    , _irpsairLastLoginAt = Nothing
    , _irpsairPhotoURL = Nothing
    , _irpsairCaptchaChallenge = Nothing
    , _irpsairCreatedAt = Nothing
    , _irpsairDelegatedProjectNumber = Nothing
    , _irpsairDeleteAttribute = Nothing
    , _irpsairDeleteProvider = Nothing
    , _irpsairReturnSecureToken = Nothing
    , _irpsairValidSince = Nothing
    , _irpsairOOBCode = Nothing
    , _irpsairPassword = Nothing
    , _irpsairCaptchaResponse = Nothing
    , _irpsairEmailVerified = Nothing
    , _irpsairDisplayName = Nothing
    , _irpsairDisableUser = Nothing
    , _irpsairLocalId = Nothing
    , _irpsairIdToken = Nothing
    , _irpsairProvider = Nothing
    }

-- | Mark the user to upgrade to federated login.
irpsairUpgradeToFederatedLogin :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Bool)
irpsairUpgradeToFederatedLogin
  = lens _irpsairUpgradeToFederatedLogin
      (\ s a -> s{_irpsairUpgradeToFederatedLogin = a})

-- | The email of the user.
irpsairEmail :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairEmail
  = lens _irpsairEmail (\ s a -> s{_irpsairEmail = a})

-- | Instance id token of the app.
irpsairInstanceId :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairInstanceId
  = lens _irpsairInstanceId
      (\ s a -> s{_irpsairInstanceId = a})

-- | Last login timestamp.
irpsairLastLoginAt :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Int64)
irpsairLastLoginAt
  = lens _irpsairLastLoginAt
      (\ s a -> s{_irpsairLastLoginAt = a})
      . mapping _Coerce

-- | The photo url of the user.
irpsairPhotoURL :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairPhotoURL
  = lens _irpsairPhotoURL
      (\ s a -> s{_irpsairPhotoURL = a})

-- | The captcha challenge.
irpsairCaptchaChallenge :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairCaptchaChallenge
  = lens _irpsairCaptchaChallenge
      (\ s a -> s{_irpsairCaptchaChallenge = a})

-- | The timestamp when the account is created.
irpsairCreatedAt :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Int64)
irpsairCreatedAt
  = lens _irpsairCreatedAt
      (\ s a -> s{_irpsairCreatedAt = a})
      . mapping _Coerce

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
irpsairDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Int64)
irpsairDelegatedProjectNumber
  = lens _irpsairDelegatedProjectNumber
      (\ s a -> s{_irpsairDelegatedProjectNumber = a})
      . mapping _Coerce

-- | The attributes users request to delete.
irpsairDeleteAttribute :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest [Text]
irpsairDeleteAttribute
  = lens _irpsairDeleteAttribute
      (\ s a -> s{_irpsairDeleteAttribute = a})
      . _Default
      . _Coerce

-- | The IDPs the user request to delete.
irpsairDeleteProvider :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest [Text]
irpsairDeleteProvider
  = lens _irpsairDeleteProvider
      (\ s a -> s{_irpsairDeleteProvider = a})
      . _Default
      . _Coerce

-- | Whether return sts id token and refresh token instead of gitkit token.
irpsairReturnSecureToken :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Bool)
irpsairReturnSecureToken
  = lens _irpsairReturnSecureToken
      (\ s a -> s{_irpsairReturnSecureToken = a})

-- | Timestamp in seconds for valid login token.
irpsairValidSince :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Int64)
irpsairValidSince
  = lens _irpsairValidSince
      (\ s a -> s{_irpsairValidSince = a})
      . mapping _Coerce

-- | The out-of-band code of the change email request.
irpsairOOBCode :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairOOBCode
  = lens _irpsairOOBCode
      (\ s a -> s{_irpsairOOBCode = a})

-- | The new password of the user.
irpsairPassword :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairPassword
  = lens _irpsairPassword
      (\ s a -> s{_irpsairPassword = a})

-- | Response to the captcha.
irpsairCaptchaResponse :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairCaptchaResponse
  = lens _irpsairCaptchaResponse
      (\ s a -> s{_irpsairCaptchaResponse = a})

-- | Mark the email as verified or not.
irpsairEmailVerified :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Bool)
irpsairEmailVerified
  = lens _irpsairEmailVerified
      (\ s a -> s{_irpsairEmailVerified = a})

-- | The name of the user.
irpsairDisplayName :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairDisplayName
  = lens _irpsairDisplayName
      (\ s a -> s{_irpsairDisplayName = a})

-- | Whether to disable the user.
irpsairDisableUser :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Bool)
irpsairDisableUser
  = lens _irpsairDisableUser
      (\ s a -> s{_irpsairDisableUser = a})

-- | The local ID of the user.
irpsairLocalId :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairLocalId
  = lens _irpsairLocalId
      (\ s a -> s{_irpsairLocalId = a})

-- | The GITKit token of the authenticated user.
irpsairIdToken :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairIdToken
  = lens _irpsairIdToken
      (\ s a -> s{_irpsairIdToken = a})

-- | The associated IDPs of the user.
irpsairProvider :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest [Text]
irpsairProvider
  = lens _irpsairProvider
      (\ s a -> s{_irpsairProvider = a})
      . _Default
      . _Coerce

instance FromJSON
         IdentitytoolkitRelyingPartySetAccountInfoRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartySetAccountInfoRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartySetAccountInfoRequest' <$>
                   (o .:? "upgradeToFederatedLogin") <*> (o .:? "email")
                     <*> (o .:? "instanceId")
                     <*> (o .:? "lastLoginAt")
                     <*> (o .:? "photoUrl")
                     <*> (o .:? "captchaChallenge")
                     <*> (o .:? "createdAt")
                     <*> (o .:? "delegatedProjectNumber")
                     <*> (o .:? "deleteAttribute" .!= mempty)
                     <*> (o .:? "deleteProvider" .!= mempty)
                     <*> (o .:? "returnSecureToken")
                     <*> (o .:? "validSince")
                     <*> (o .:? "oobCode")
                     <*> (o .:? "password")
                     <*> (o .:? "captchaResponse")
                     <*> (o .:? "emailVerified")
                     <*> (o .:? "displayName")
                     <*> (o .:? "disableUser")
                     <*> (o .:? "localId")
                     <*> (o .:? "idToken")
                     <*> (o .:? "provider" .!= mempty))

instance ToJSON
         IdentitytoolkitRelyingPartySetAccountInfoRequest
         where
        toJSON
          IdentitytoolkitRelyingPartySetAccountInfoRequest'{..}
          = object
              (catMaybes
                 [("upgradeToFederatedLogin" .=) <$>
                    _irpsairUpgradeToFederatedLogin,
                  ("email" .=) <$> _irpsairEmail,
                  ("instanceId" .=) <$> _irpsairInstanceId,
                  ("lastLoginAt" .=) <$> _irpsairLastLoginAt,
                  ("photoUrl" .=) <$> _irpsairPhotoURL,
                  ("captchaChallenge" .=) <$> _irpsairCaptchaChallenge,
                  ("createdAt" .=) <$> _irpsairCreatedAt,
                  ("delegatedProjectNumber" .=) <$>
                    _irpsairDelegatedProjectNumber,
                  ("deleteAttribute" .=) <$> _irpsairDeleteAttribute,
                  ("deleteProvider" .=) <$> _irpsairDeleteProvider,
                  ("returnSecureToken" .=) <$>
                    _irpsairReturnSecureToken,
                  ("validSince" .=) <$> _irpsairValidSince,
                  ("oobCode" .=) <$> _irpsairOOBCode,
                  ("password" .=) <$> _irpsairPassword,
                  ("captchaResponse" .=) <$> _irpsairCaptchaResponse,
                  ("emailVerified" .=) <$> _irpsairEmailVerified,
                  ("displayName" .=) <$> _irpsairDisplayName,
                  ("disableUser" .=) <$> _irpsairDisableUser,
                  ("localId" .=) <$> _irpsairLocalId,
                  ("idToken" .=) <$> _irpsairIdToken,
                  ("provider" .=) <$> _irpsairProvider])

-- | Request to verify the IDP assertion.
--
-- /See:/ 'identitytoolkitRelyingPartyVerifyAssertionRequest' smart constructor.
data IdentitytoolkitRelyingPartyVerifyAssertionRequest = IdentitytoolkitRelyingPartyVerifyAssertionRequest'
    { _irpvarReturnIdpCredential    :: !(Maybe Bool)
    , _irpvarInstanceId             :: !(Maybe Text)
    , _irpvarDelegatedProjectNumber :: !(Maybe (Textual Int64))
    , _irpvarPostBody               :: !(Maybe Text)
    , _irpvarReturnSecureToken      :: !(Maybe Bool)
    , _irpvarReturnRefreshToken     :: !(Maybe Bool)
    , _irpvarRequestURI             :: !(Maybe Text)
    , _irpvarSessionId              :: !(Maybe Text)
    , _irpvarIdToken                :: !(Maybe Text)
    , _irpvarPendingIdToken         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyVerifyAssertionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpvarReturnIdpCredential'
--
-- * 'irpvarInstanceId'
--
-- * 'irpvarDelegatedProjectNumber'
--
-- * 'irpvarPostBody'
--
-- * 'irpvarReturnSecureToken'
--
-- * 'irpvarReturnRefreshToken'
--
-- * 'irpvarRequestURI'
--
-- * 'irpvarSessionId'
--
-- * 'irpvarIdToken'
--
-- * 'irpvarPendingIdToken'
identitytoolkitRelyingPartyVerifyAssertionRequest
    :: IdentitytoolkitRelyingPartyVerifyAssertionRequest
identitytoolkitRelyingPartyVerifyAssertionRequest =
    IdentitytoolkitRelyingPartyVerifyAssertionRequest'
    { _irpvarReturnIdpCredential = Nothing
    , _irpvarInstanceId = Nothing
    , _irpvarDelegatedProjectNumber = Nothing
    , _irpvarPostBody = Nothing
    , _irpvarReturnSecureToken = Nothing
    , _irpvarReturnRefreshToken = Nothing
    , _irpvarRequestURI = Nothing
    , _irpvarSessionId = Nothing
    , _irpvarIdToken = Nothing
    , _irpvarPendingIdToken = Nothing
    }

-- | Whether return 200 and IDP credential rather than throw exception when
-- federated id is already linked.
irpvarReturnIdpCredential :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Bool)
irpvarReturnIdpCredential
  = lens _irpvarReturnIdpCredential
      (\ s a -> s{_irpvarReturnIdpCredential = a})

-- | Instance id token of the app.
irpvarInstanceId :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Text)
irpvarInstanceId
  = lens _irpvarInstanceId
      (\ s a -> s{_irpvarInstanceId = a})

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
irpvarDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Int64)
irpvarDelegatedProjectNumber
  = lens _irpvarDelegatedProjectNumber
      (\ s a -> s{_irpvarDelegatedProjectNumber = a})
      . mapping _Coerce

-- | The post body if the request is a HTTP POST.
irpvarPostBody :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Text)
irpvarPostBody
  = lens _irpvarPostBody
      (\ s a -> s{_irpvarPostBody = a})

-- | Whether return sts id token and refresh token instead of gitkit token.
irpvarReturnSecureToken :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Bool)
irpvarReturnSecureToken
  = lens _irpvarReturnSecureToken
      (\ s a -> s{_irpvarReturnSecureToken = a})

-- | Whether to return refresh tokens.
irpvarReturnRefreshToken :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Bool)
irpvarReturnRefreshToken
  = lens _irpvarReturnRefreshToken
      (\ s a -> s{_irpvarReturnRefreshToken = a})

-- | The URI to which the IDP redirects the user back. It may contain
-- federated login result params added by the IDP.
irpvarRequestURI :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Text)
irpvarRequestURI
  = lens _irpvarRequestURI
      (\ s a -> s{_irpvarRequestURI = a})

-- | Session ID, which should match the one in previous createAuthUri
-- request.
irpvarSessionId :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Text)
irpvarSessionId
  = lens _irpvarSessionId
      (\ s a -> s{_irpvarSessionId = a})

-- | The GITKit token of the authenticated user.
irpvarIdToken :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Text)
irpvarIdToken
  = lens _irpvarIdToken
      (\ s a -> s{_irpvarIdToken = a})

-- | The GITKit token for the non-trusted IDP pending to be confirmed by the
-- user.
irpvarPendingIdToken :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Text)
irpvarPendingIdToken
  = lens _irpvarPendingIdToken
      (\ s a -> s{_irpvarPendingIdToken = a})

instance FromJSON
         IdentitytoolkitRelyingPartyVerifyAssertionRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyVerifyAssertionRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyVerifyAssertionRequest'
                   <$>
                   (o .:? "returnIdpCredential") <*>
                     (o .:? "instanceId")
                     <*> (o .:? "delegatedProjectNumber")
                     <*> (o .:? "postBody")
                     <*> (o .:? "returnSecureToken")
                     <*> (o .:? "returnRefreshToken")
                     <*> (o .:? "requestUri")
                     <*> (o .:? "sessionId")
                     <*> (o .:? "idToken")
                     <*> (o .:? "pendingIdToken"))

instance ToJSON
         IdentitytoolkitRelyingPartyVerifyAssertionRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyVerifyAssertionRequest'{..}
          = object
              (catMaybes
                 [("returnIdpCredential" .=) <$>
                    _irpvarReturnIdpCredential,
                  ("instanceId" .=) <$> _irpvarInstanceId,
                  ("delegatedProjectNumber" .=) <$>
                    _irpvarDelegatedProjectNumber,
                  ("postBody" .=) <$> _irpvarPostBody,
                  ("returnSecureToken" .=) <$>
                    _irpvarReturnSecureToken,
                  ("returnRefreshToken" .=) <$>
                    _irpvarReturnRefreshToken,
                  ("requestUri" .=) <$> _irpvarRequestURI,
                  ("sessionId" .=) <$> _irpvarSessionId,
                  ("idToken" .=) <$> _irpvarIdToken,
                  ("pendingIdToken" .=) <$> _irpvarPendingIdToken])

-- | Respone of deleting account.
--
-- /See:/ 'deleteAccountResponse' smart constructor.
newtype DeleteAccountResponse = DeleteAccountResponse'
    { _darKind :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darKind'
deleteAccountResponse
    :: DeleteAccountResponse
deleteAccountResponse =
    DeleteAccountResponse'
    { _darKind = "identitytoolkit#DeleteAccountResponse"
    }

-- | The fixed string \"identitytoolkit#DeleteAccountResponse\".
darKind :: Lens' DeleteAccountResponse Text
darKind = lens _darKind (\ s a -> s{_darKind = a})

instance FromJSON DeleteAccountResponse where
        parseJSON
          = withObject "DeleteAccountResponse"
              (\ o ->
                 DeleteAccountResponse' <$>
                   (o .:? "kind" .!=
                      "identitytoolkit#DeleteAccountResponse"))

instance ToJSON DeleteAccountResponse where
        toJSON DeleteAccountResponse'{..}
          = object (catMaybes [Just ("kind" .= _darKind)])

-- | Response of signing out user.
--
-- /See:/ 'identitytoolkitRelyingPartySignOutUserResponse' smart constructor.
newtype IdentitytoolkitRelyingPartySignOutUserResponse = IdentitytoolkitRelyingPartySignOutUserResponse'
    { _irpsourLocalId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartySignOutUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpsourLocalId'
identitytoolkitRelyingPartySignOutUserResponse
    :: IdentitytoolkitRelyingPartySignOutUserResponse
identitytoolkitRelyingPartySignOutUserResponse =
    IdentitytoolkitRelyingPartySignOutUserResponse'
    { _irpsourLocalId = Nothing
    }

-- | The local ID of the user.
irpsourLocalId :: Lens' IdentitytoolkitRelyingPartySignOutUserResponse (Maybe Text)
irpsourLocalId
  = lens _irpsourLocalId
      (\ s a -> s{_irpsourLocalId = a})

instance FromJSON
         IdentitytoolkitRelyingPartySignOutUserResponse where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartySignOutUserResponse"
              (\ o ->
                 IdentitytoolkitRelyingPartySignOutUserResponse' <$>
                   (o .:? "localId"))

instance ToJSON
         IdentitytoolkitRelyingPartySignOutUserResponse where
        toJSON
          IdentitytoolkitRelyingPartySignOutUserResponse'{..}
          = object
              (catMaybes [("localId" .=) <$> _irpsourLocalId])

-- | Respone of downloading accounts in batch.
--
-- /See:/ 'downloadAccountResponse' smart constructor.
data DownloadAccountResponse = DownloadAccountResponse'
    { _dNextPageToken :: !(Maybe Text)
    , _dUsers         :: !(Maybe [UserInfo])
    , _dKind          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DownloadAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNextPageToken'
--
-- * 'dUsers'
--
-- * 'dKind'
downloadAccountResponse
    :: DownloadAccountResponse
downloadAccountResponse =
    DownloadAccountResponse'
    { _dNextPageToken = Nothing
    , _dUsers = Nothing
    , _dKind = "identitytoolkit#DownloadAccountResponse"
    }

-- | The next page token. To be used in a subsequent request to return the
-- next page of results.
dNextPageToken :: Lens' DownloadAccountResponse (Maybe Text)
dNextPageToken
  = lens _dNextPageToken
      (\ s a -> s{_dNextPageToken = a})

-- | The user accounts data.
dUsers :: Lens' DownloadAccountResponse [UserInfo]
dUsers
  = lens _dUsers (\ s a -> s{_dUsers = a}) . _Default .
      _Coerce

-- | The fixed string \"identitytoolkit#DownloadAccountResponse\".
dKind :: Lens' DownloadAccountResponse Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

instance FromJSON DownloadAccountResponse where
        parseJSON
          = withObject "DownloadAccountResponse"
              (\ o ->
                 DownloadAccountResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "users" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#DownloadAccountResponse"))

instance ToJSON DownloadAccountResponse where
        toJSON DownloadAccountResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dNextPageToken,
                  ("users" .=) <$> _dUsers, Just ("kind" .= _dKind)])

-- | Response of getting the project configuration.
--
-- /See:/ 'identitytoolkitRelyingPartyGetProjectConfigResponse' smart constructor.
data IdentitytoolkitRelyingPartyGetProjectConfigResponse = IdentitytoolkitRelyingPartyGetProjectConfigResponse'
    { _irpgpcrAuthorizedDomains           :: !(Maybe [Text])
    , _irpgpcrAPIKey                      :: !(Maybe Text)
    , _irpgpcrIdpConfig                   :: !(Maybe [IdpConfig])
    , _irpgpcrChangeEmailTemplate         :: !(Maybe EmailTemplate)
    , _irpgpcrVerifyEmailTemplate         :: !(Maybe EmailTemplate)
    , _irpgpcrEnableAnonymousUser         :: !(Maybe Bool)
    , _irpgpcrLegacyResetPasswordTemplate :: !(Maybe EmailTemplate)
    , _irpgpcrAllowPasswordUser           :: !(Maybe Bool)
    , _irpgpcrResetPasswordTemplate       :: !(Maybe EmailTemplate)
    , _irpgpcrProjectId                   :: !(Maybe Text)
    , _irpgpcrUseEmailSending             :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyGetProjectConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpgpcrAuthorizedDomains'
--
-- * 'irpgpcrAPIKey'
--
-- * 'irpgpcrIdpConfig'
--
-- * 'irpgpcrChangeEmailTemplate'
--
-- * 'irpgpcrVerifyEmailTemplate'
--
-- * 'irpgpcrEnableAnonymousUser'
--
-- * 'irpgpcrLegacyResetPasswordTemplate'
--
-- * 'irpgpcrAllowPasswordUser'
--
-- * 'irpgpcrResetPasswordTemplate'
--
-- * 'irpgpcrProjectId'
--
-- * 'irpgpcrUseEmailSending'
identitytoolkitRelyingPartyGetProjectConfigResponse
    :: IdentitytoolkitRelyingPartyGetProjectConfigResponse
identitytoolkitRelyingPartyGetProjectConfigResponse =
    IdentitytoolkitRelyingPartyGetProjectConfigResponse'
    { _irpgpcrAuthorizedDomains = Nothing
    , _irpgpcrAPIKey = Nothing
    , _irpgpcrIdpConfig = Nothing
    , _irpgpcrChangeEmailTemplate = Nothing
    , _irpgpcrVerifyEmailTemplate = Nothing
    , _irpgpcrEnableAnonymousUser = Nothing
    , _irpgpcrLegacyResetPasswordTemplate = Nothing
    , _irpgpcrAllowPasswordUser = Nothing
    , _irpgpcrResetPasswordTemplate = Nothing
    , _irpgpcrProjectId = Nothing
    , _irpgpcrUseEmailSending = Nothing
    }

-- | Authorized domains.
irpgpcrAuthorizedDomains :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse [Text]
irpgpcrAuthorizedDomains
  = lens _irpgpcrAuthorizedDomains
      (\ s a -> s{_irpgpcrAuthorizedDomains = a})
      . _Default
      . _Coerce

-- | Browser API key, needed when making http request to Apiary.
irpgpcrAPIKey :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe Text)
irpgpcrAPIKey
  = lens _irpgpcrAPIKey
      (\ s a -> s{_irpgpcrAPIKey = a})

-- | OAuth2 provider configuration.
irpgpcrIdpConfig :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse [IdpConfig]
irpgpcrIdpConfig
  = lens _irpgpcrIdpConfig
      (\ s a -> s{_irpgpcrIdpConfig = a})
      . _Default
      . _Coerce

-- | Change email template.
irpgpcrChangeEmailTemplate :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe EmailTemplate)
irpgpcrChangeEmailTemplate
  = lens _irpgpcrChangeEmailTemplate
      (\ s a -> s{_irpgpcrChangeEmailTemplate = a})

-- | Verify email template.
irpgpcrVerifyEmailTemplate :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe EmailTemplate)
irpgpcrVerifyEmailTemplate
  = lens _irpgpcrVerifyEmailTemplate
      (\ s a -> s{_irpgpcrVerifyEmailTemplate = a})

-- | Whether anonymous user is enabled.
irpgpcrEnableAnonymousUser :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe Bool)
irpgpcrEnableAnonymousUser
  = lens _irpgpcrEnableAnonymousUser
      (\ s a -> s{_irpgpcrEnableAnonymousUser = a})

-- | Legacy reset password email template.
irpgpcrLegacyResetPasswordTemplate :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe EmailTemplate)
irpgpcrLegacyResetPasswordTemplate
  = lens _irpgpcrLegacyResetPasswordTemplate
      (\ s a -> s{_irpgpcrLegacyResetPasswordTemplate = a})

-- | Whether to allow password user sign in or sign up.
irpgpcrAllowPasswordUser :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe Bool)
irpgpcrAllowPasswordUser
  = lens _irpgpcrAllowPasswordUser
      (\ s a -> s{_irpgpcrAllowPasswordUser = a})

-- | Reset password email template.
irpgpcrResetPasswordTemplate :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe EmailTemplate)
irpgpcrResetPasswordTemplate
  = lens _irpgpcrResetPasswordTemplate
      (\ s a -> s{_irpgpcrResetPasswordTemplate = a})

-- | Project ID of the relying party.
irpgpcrProjectId :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe Text)
irpgpcrProjectId
  = lens _irpgpcrProjectId
      (\ s a -> s{_irpgpcrProjectId = a})

-- | Whether to use email sending provided by Firebear.
irpgpcrUseEmailSending :: Lens' IdentitytoolkitRelyingPartyGetProjectConfigResponse (Maybe Bool)
irpgpcrUseEmailSending
  = lens _irpgpcrUseEmailSending
      (\ s a -> s{_irpgpcrUseEmailSending = a})

instance FromJSON
         IdentitytoolkitRelyingPartyGetProjectConfigResponse
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyGetProjectConfigResponse"
              (\ o ->
                 IdentitytoolkitRelyingPartyGetProjectConfigResponse'
                   <$>
                   (o .:? "authorizedDomains" .!= mempty) <*>
                     (o .:? "apiKey")
                     <*> (o .:? "idpConfig" .!= mempty)
                     <*> (o .:? "changeEmailTemplate")
                     <*> (o .:? "verifyEmailTemplate")
                     <*> (o .:? "enableAnonymousUser")
                     <*> (o .:? "legacyResetPasswordTemplate")
                     <*> (o .:? "allowPasswordUser")
                     <*> (o .:? "resetPasswordTemplate")
                     <*> (o .:? "projectId")
                     <*> (o .:? "useEmailSending"))

instance ToJSON
         IdentitytoolkitRelyingPartyGetProjectConfigResponse
         where
        toJSON
          IdentitytoolkitRelyingPartyGetProjectConfigResponse'{..}
          = object
              (catMaybes
                 [("authorizedDomains" .=) <$>
                    _irpgpcrAuthorizedDomains,
                  ("apiKey" .=) <$> _irpgpcrAPIKey,
                  ("idpConfig" .=) <$> _irpgpcrIdpConfig,
                  ("changeEmailTemplate" .=) <$>
                    _irpgpcrChangeEmailTemplate,
                  ("verifyEmailTemplate" .=) <$>
                    _irpgpcrVerifyEmailTemplate,
                  ("enableAnonymousUser" .=) <$>
                    _irpgpcrEnableAnonymousUser,
                  ("legacyResetPasswordTemplate" .=) <$>
                    _irpgpcrLegacyResetPasswordTemplate,
                  ("allowPasswordUser" .=) <$>
                    _irpgpcrAllowPasswordUser,
                  ("resetPasswordTemplate" .=) <$>
                    _irpgpcrResetPasswordTemplate,
                  ("projectId" .=) <$> _irpgpcrProjectId,
                  ("useEmailSending" .=) <$> _irpgpcrUseEmailSending])

-- | Response of resetting the password.
--
-- /See:/ 'resetPasswordResponse' smart constructor.
data ResetPasswordResponse = ResetPasswordResponse'
    { _rprEmail       :: !(Maybe Text)
    , _rprKind        :: !Text
    , _rprRequestType :: !(Maybe Text)
    , _rprNewEmail    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResetPasswordResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprEmail'
--
-- * 'rprKind'
--
-- * 'rprRequestType'
--
-- * 'rprNewEmail'
resetPasswordResponse
    :: ResetPasswordResponse
resetPasswordResponse =
    ResetPasswordResponse'
    { _rprEmail = Nothing
    , _rprKind = "identitytoolkit#ResetPasswordResponse"
    , _rprRequestType = Nothing
    , _rprNewEmail = Nothing
    }

-- | The user\'s email. If the out-of-band code is for email recovery, the
-- user\'s original email.
rprEmail :: Lens' ResetPasswordResponse (Maybe Text)
rprEmail = lens _rprEmail (\ s a -> s{_rprEmail = a})

-- | The fixed string \"identitytoolkit#ResetPasswordResponse\".
rprKind :: Lens' ResetPasswordResponse Text
rprKind = lens _rprKind (\ s a -> s{_rprKind = a})

-- | The request type.
rprRequestType :: Lens' ResetPasswordResponse (Maybe Text)
rprRequestType
  = lens _rprRequestType
      (\ s a -> s{_rprRequestType = a})

-- | If the out-of-band code is for email recovery, the user\'s new email.
rprNewEmail :: Lens' ResetPasswordResponse (Maybe Text)
rprNewEmail
  = lens _rprNewEmail (\ s a -> s{_rprNewEmail = a})

instance FromJSON ResetPasswordResponse where
        parseJSON
          = withObject "ResetPasswordResponse"
              (\ o ->
                 ResetPasswordResponse' <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#ResetPasswordResponse")
                     <*> (o .:? "requestType")
                     <*> (o .:? "newEmail"))

instance ToJSON ResetPasswordResponse where
        toJSON ResetPasswordResponse'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _rprEmail,
                  Just ("kind" .= _rprKind),
                  ("requestType" .=) <$> _rprRequestType,
                  ("newEmail" .=) <$> _rprNewEmail])

-- | Respone of uploading accounts in batch.
--
-- /See:/ 'uploadAccountResponse' smart constructor.
data UploadAccountResponse = UploadAccountResponse'
    { _uarKind  :: !Text
    , _uarError :: !(Maybe [UploadAccountResponseErrorItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UploadAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarKind'
--
-- * 'uarError'
uploadAccountResponse
    :: UploadAccountResponse
uploadAccountResponse =
    UploadAccountResponse'
    { _uarKind = "identitytoolkit#UploadAccountResponse"
    , _uarError = Nothing
    }

-- | The fixed string \"identitytoolkit#UploadAccountResponse\".
uarKind :: Lens' UploadAccountResponse Text
uarKind = lens _uarKind (\ s a -> s{_uarKind = a})

-- | The error encountered while processing the account info.
uarError :: Lens' UploadAccountResponse [UploadAccountResponseErrorItem]
uarError
  = lens _uarError (\ s a -> s{_uarError = a}) .
      _Default
      . _Coerce

instance FromJSON UploadAccountResponse where
        parseJSON
          = withObject "UploadAccountResponse"
              (\ o ->
                 UploadAccountResponse' <$>
                   (o .:? "kind" .!=
                      "identitytoolkit#UploadAccountResponse")
                     <*> (o .:? "error" .!= mempty))

instance ToJSON UploadAccountResponse where
        toJSON UploadAccountResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _uarKind),
                  ("error" .=) <$> _uarError])

-- | Response of creating the IDP authentication URL.
--
-- /See:/ 'createAuthURIResponse' smart constructor.
data CreateAuthURIResponse = CreateAuthURIResponse'
    { _caurProviderId          :: !(Maybe Text)
    , _caurKind                :: !Text
    , _caurAllProviders        :: !(Maybe [Text])
    , _caurAuthURI             :: !(Maybe Text)
    , _caurCaptchaRequired     :: !(Maybe Bool)
    , _caurRegistered          :: !(Maybe Bool)
    , _caurSessionId           :: !(Maybe Text)
    , _caurForExistingProvider :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateAuthURIResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caurProviderId'
--
-- * 'caurKind'
--
-- * 'caurAllProviders'
--
-- * 'caurAuthURI'
--
-- * 'caurCaptchaRequired'
--
-- * 'caurRegistered'
--
-- * 'caurSessionId'
--
-- * 'caurForExistingProvider'
createAuthURIResponse
    :: CreateAuthURIResponse
createAuthURIResponse =
    CreateAuthURIResponse'
    { _caurProviderId = Nothing
    , _caurKind = "identitytoolkit#CreateAuthUriResponse"
    , _caurAllProviders = Nothing
    , _caurAuthURI = Nothing
    , _caurCaptchaRequired = Nothing
    , _caurRegistered = Nothing
    , _caurSessionId = Nothing
    , _caurForExistingProvider = Nothing
    }

-- | The provider ID of the auth URI.
caurProviderId :: Lens' CreateAuthURIResponse (Maybe Text)
caurProviderId
  = lens _caurProviderId
      (\ s a -> s{_caurProviderId = a})

-- | The fixed string identitytoolkit#CreateAuthUriResponse\".
caurKind :: Lens' CreateAuthURIResponse Text
caurKind = lens _caurKind (\ s a -> s{_caurKind = a})

-- | all providers the user has once used to do federated login
caurAllProviders :: Lens' CreateAuthURIResponse [Text]
caurAllProviders
  = lens _caurAllProviders
      (\ s a -> s{_caurAllProviders = a})
      . _Default
      . _Coerce

-- | The URI used by the IDP to authenticate the user.
caurAuthURI :: Lens' CreateAuthURIResponse (Maybe Text)
caurAuthURI
  = lens _caurAuthURI (\ s a -> s{_caurAuthURI = a})

-- | True if captcha is required.
caurCaptchaRequired :: Lens' CreateAuthURIResponse (Maybe Bool)
caurCaptchaRequired
  = lens _caurCaptchaRequired
      (\ s a -> s{_caurCaptchaRequired = a})

-- | Whether the user is registered if the identifier is an email.
caurRegistered :: Lens' CreateAuthURIResponse (Maybe Bool)
caurRegistered
  = lens _caurRegistered
      (\ s a -> s{_caurRegistered = a})

-- | Session ID which should be passed in the following verifyAssertion
-- request.
caurSessionId :: Lens' CreateAuthURIResponse (Maybe Text)
caurSessionId
  = lens _caurSessionId
      (\ s a -> s{_caurSessionId = a})

-- | True if the authUri is for user\'s existing provider.
caurForExistingProvider :: Lens' CreateAuthURIResponse (Maybe Bool)
caurForExistingProvider
  = lens _caurForExistingProvider
      (\ s a -> s{_caurForExistingProvider = a})

instance FromJSON CreateAuthURIResponse where
        parseJSON
          = withObject "CreateAuthURIResponse"
              (\ o ->
                 CreateAuthURIResponse' <$>
                   (o .:? "providerId") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#CreateAuthUriResponse")
                     <*> (o .:? "allProviders" .!= mempty)
                     <*> (o .:? "authUri")
                     <*> (o .:? "captchaRequired")
                     <*> (o .:? "registered")
                     <*> (o .:? "sessionId")
                     <*> (o .:? "forExistingProvider"))

instance ToJSON CreateAuthURIResponse where
        toJSON CreateAuthURIResponse'{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _caurProviderId,
                  Just ("kind" .= _caurKind),
                  ("allProviders" .=) <$> _caurAllProviders,
                  ("authUri" .=) <$> _caurAuthURI,
                  ("captchaRequired" .=) <$> _caurCaptchaRequired,
                  ("registered" .=) <$> _caurRegistered,
                  ("sessionId" .=) <$> _caurSessionId,
                  ("forExistingProvider" .=) <$>
                    _caurForExistingProvider])

-- | Respone of getting public keys.
--
-- /See:/ 'identitytoolkitRelyingPartyGetPublicKeysResponse' smart constructor.
newtype IdentitytoolkitRelyingPartyGetPublicKeysResponse = IdentitytoolkitRelyingPartyGetPublicKeysResponse'
    { _irpgpkrAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyGetPublicKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpgpkrAddtional'
identitytoolkitRelyingPartyGetPublicKeysResponse
    :: HashMap Text Text -- ^ 'irpgpkrAddtional'
    -> IdentitytoolkitRelyingPartyGetPublicKeysResponse
identitytoolkitRelyingPartyGetPublicKeysResponse pIrpgpkrAddtional_ =
    IdentitytoolkitRelyingPartyGetPublicKeysResponse'
    { _irpgpkrAddtional = _Coerce # pIrpgpkrAddtional_
    }

irpgpkrAddtional :: Lens' IdentitytoolkitRelyingPartyGetPublicKeysResponse (HashMap Text Text)
irpgpkrAddtional
  = lens _irpgpkrAddtional
      (\ s a -> s{_irpgpkrAddtional = a})
      . _Coerce

instance FromJSON
         IdentitytoolkitRelyingPartyGetPublicKeysResponse
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyGetPublicKeysResponse"
              (\ o ->
                 IdentitytoolkitRelyingPartyGetPublicKeysResponse' <$>
                   (parseJSONObject o))

instance ToJSON
         IdentitytoolkitRelyingPartyGetPublicKeysResponse
         where
        toJSON = toJSON . _irpgpkrAddtional

-- | Request of getting a code for user confirmation (reset password, change
-- email etc.)
--
-- /See:/ 'relyingParty' smart constructor.
data RelyingParty = RelyingParty'
    { _rpEmail       :: !(Maybe Text)
    , _rpKind        :: !Text
    , _rpUserIP      :: !(Maybe Text)
    , _rpRequestType :: !(Maybe Text)
    , _rpCaptchaResp :: !(Maybe Text)
    , _rpNewEmail    :: !(Maybe Text)
    , _rpChallenge   :: !(Maybe Text)
    , _rpIdToken     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingParty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpEmail'
--
-- * 'rpKind'
--
-- * 'rpUserIP'
--
-- * 'rpRequestType'
--
-- * 'rpCaptchaResp'
--
-- * 'rpNewEmail'
--
-- * 'rpChallenge'
--
-- * 'rpIdToken'
relyingParty
    :: RelyingParty
relyingParty =
    RelyingParty'
    { _rpEmail = Nothing
    , _rpKind = "identitytoolkit#relyingparty"
    , _rpUserIP = Nothing
    , _rpRequestType = Nothing
    , _rpCaptchaResp = Nothing
    , _rpNewEmail = Nothing
    , _rpChallenge = Nothing
    , _rpIdToken = Nothing
    }

-- | The email of the user.
rpEmail :: Lens' RelyingParty (Maybe Text)
rpEmail = lens _rpEmail (\ s a -> s{_rpEmail = a})

-- | The fixed string \"identitytoolkit#relyingparty\".
rpKind :: Lens' RelyingParty Text
rpKind = lens _rpKind (\ s a -> s{_rpKind = a})

-- | The IP address of the user.
rpUserIP :: Lens' RelyingParty (Maybe Text)
rpUserIP = lens _rpUserIP (\ s a -> s{_rpUserIP = a})

-- | The request type.
rpRequestType :: Lens' RelyingParty (Maybe Text)
rpRequestType
  = lens _rpRequestType
      (\ s a -> s{_rpRequestType = a})

-- | The recaptcha response from the user.
rpCaptchaResp :: Lens' RelyingParty (Maybe Text)
rpCaptchaResp
  = lens _rpCaptchaResp
      (\ s a -> s{_rpCaptchaResp = a})

-- | The new email if the code is for email change.
rpNewEmail :: Lens' RelyingParty (Maybe Text)
rpNewEmail
  = lens _rpNewEmail (\ s a -> s{_rpNewEmail = a})

-- | The recaptcha challenge presented to the user.
rpChallenge :: Lens' RelyingParty (Maybe Text)
rpChallenge
  = lens _rpChallenge (\ s a -> s{_rpChallenge = a})

-- | The user\'s Gitkit login token for email change.
rpIdToken :: Lens' RelyingParty (Maybe Text)
rpIdToken
  = lens _rpIdToken (\ s a -> s{_rpIdToken = a})

instance FromJSON RelyingParty where
        parseJSON
          = withObject "RelyingParty"
              (\ o ->
                 RelyingParty' <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!= "identitytoolkit#relyingparty")
                     <*> (o .:? "userIp")
                     <*> (o .:? "requestType")
                     <*> (o .:? "captchaResp")
                     <*> (o .:? "newEmail")
                     <*> (o .:? "challenge")
                     <*> (o .:? "idToken"))

instance ToJSON RelyingParty where
        toJSON RelyingParty'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _rpEmail, Just ("kind" .= _rpKind),
                  ("userIp" .=) <$> _rpUserIP,
                  ("requestType" .=) <$> _rpRequestType,
                  ("captchaResp" .=) <$> _rpCaptchaResp,
                  ("newEmail" .=) <$> _rpNewEmail,
                  ("challenge" .=) <$> _rpChallenge,
                  ("idToken" .=) <$> _rpIdToken])

-- | Request to get the account information.
--
-- /See:/ 'identitytoolkitRelyingPartyGetAccountInfoRequest' smart constructor.
data IdentitytoolkitRelyingPartyGetAccountInfoRequest = IdentitytoolkitRelyingPartyGetAccountInfoRequest'
    { _irpgairEmail                  :: !(Maybe [Text])
    , _irpgairDelegatedProjectNumber :: !(Maybe (Textual Int64))
    , _irpgairLocalId                :: !(Maybe [Text])
    , _irpgairIdToken                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyGetAccountInfoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpgairEmail'
--
-- * 'irpgairDelegatedProjectNumber'
--
-- * 'irpgairLocalId'
--
-- * 'irpgairIdToken'
identitytoolkitRelyingPartyGetAccountInfoRequest
    :: IdentitytoolkitRelyingPartyGetAccountInfoRequest
identitytoolkitRelyingPartyGetAccountInfoRequest =
    IdentitytoolkitRelyingPartyGetAccountInfoRequest'
    { _irpgairEmail = Nothing
    , _irpgairDelegatedProjectNumber = Nothing
    , _irpgairLocalId = Nothing
    , _irpgairIdToken = Nothing
    }

-- | The list of emails of the users to inquiry.
irpgairEmail :: Lens' IdentitytoolkitRelyingPartyGetAccountInfoRequest [Text]
irpgairEmail
  = lens _irpgairEmail (\ s a -> s{_irpgairEmail = a})
      . _Default
      . _Coerce

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
irpgairDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartyGetAccountInfoRequest (Maybe Int64)
irpgairDelegatedProjectNumber
  = lens _irpgairDelegatedProjectNumber
      (\ s a -> s{_irpgairDelegatedProjectNumber = a})
      . mapping _Coerce

-- | The list of local ID\'s of the users to inquiry.
irpgairLocalId :: Lens' IdentitytoolkitRelyingPartyGetAccountInfoRequest [Text]
irpgairLocalId
  = lens _irpgairLocalId
      (\ s a -> s{_irpgairLocalId = a})
      . _Default
      . _Coerce

-- | The GITKit token of the authenticated user.
irpgairIdToken :: Lens' IdentitytoolkitRelyingPartyGetAccountInfoRequest (Maybe Text)
irpgairIdToken
  = lens _irpgairIdToken
      (\ s a -> s{_irpgairIdToken = a})

instance FromJSON
         IdentitytoolkitRelyingPartyGetAccountInfoRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyGetAccountInfoRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyGetAccountInfoRequest' <$>
                   (o .:? "email" .!= mempty) <*>
                     (o .:? "delegatedProjectNumber")
                     <*> (o .:? "localId" .!= mempty)
                     <*> (o .:? "idToken"))

instance ToJSON
         IdentitytoolkitRelyingPartyGetAccountInfoRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyGetAccountInfoRequest'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irpgairEmail,
                  ("delegatedProjectNumber" .=) <$>
                    _irpgairDelegatedProjectNumber,
                  ("localId" .=) <$> _irpgairLocalId,
                  ("idToken" .=) <$> _irpgairIdToken])

-- | Template for an email template.
--
-- /See:/ 'emailTemplate' smart constructor.
data EmailTemplate = EmailTemplate'
    { _etSubject         :: !(Maybe Text)
    , _etBody            :: !(Maybe Text)
    , _etFormat          :: !(Maybe Text)
    , _etFromDisplayName :: !(Maybe Text)
    , _etFrom            :: !(Maybe Text)
    , _etReplyTo         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EmailTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etSubject'
--
-- * 'etBody'
--
-- * 'etFormat'
--
-- * 'etFromDisplayName'
--
-- * 'etFrom'
--
-- * 'etReplyTo'
emailTemplate
    :: EmailTemplate
emailTemplate =
    EmailTemplate'
    { _etSubject = Nothing
    , _etBody = Nothing
    , _etFormat = Nothing
    , _etFromDisplayName = Nothing
    , _etFrom = Nothing
    , _etReplyTo = Nothing
    }

-- | Subject of the email.
etSubject :: Lens' EmailTemplate (Maybe Text)
etSubject
  = lens _etSubject (\ s a -> s{_etSubject = a})

-- | Email body.
etBody :: Lens' EmailTemplate (Maybe Text)
etBody = lens _etBody (\ s a -> s{_etBody = a})

-- | Email body format.
etFormat :: Lens' EmailTemplate (Maybe Text)
etFormat = lens _etFormat (\ s a -> s{_etFormat = a})

-- | From display name.
etFromDisplayName :: Lens' EmailTemplate (Maybe Text)
etFromDisplayName
  = lens _etFromDisplayName
      (\ s a -> s{_etFromDisplayName = a})

-- | From address of the email.
etFrom :: Lens' EmailTemplate (Maybe Text)
etFrom = lens _etFrom (\ s a -> s{_etFrom = a})

-- | Reply-to address.
etReplyTo :: Lens' EmailTemplate (Maybe Text)
etReplyTo
  = lens _etReplyTo (\ s a -> s{_etReplyTo = a})

instance FromJSON EmailTemplate where
        parseJSON
          = withObject "EmailTemplate"
              (\ o ->
                 EmailTemplate' <$>
                   (o .:? "subject") <*> (o .:? "body") <*>
                     (o .:? "format")
                     <*> (o .:? "fromDisplayName")
                     <*> (o .:? "from")
                     <*> (o .:? "replyTo"))

instance ToJSON EmailTemplate where
        toJSON EmailTemplate'{..}
          = object
              (catMaybes
                 [("subject" .=) <$> _etSubject,
                  ("body" .=) <$> _etBody, ("format" .=) <$> _etFormat,
                  ("fromDisplayName" .=) <$> _etFromDisplayName,
                  ("from" .=) <$> _etFrom,
                  ("replyTo" .=) <$> _etReplyTo])

-- | Request to upload user account in batch.
--
-- /See:/ 'identitytoolkitRelyingPartyUploadAccountRequest' smart constructor.
data IdentitytoolkitRelyingPartyUploadAccountRequest = IdentitytoolkitRelyingPartyUploadAccountRequest'
    { _irpuarUsers                  :: !(Maybe [UserInfo])
    , _irpuarMemoryCost             :: !(Maybe (Textual Int32))
    , _irpuarDelegatedProjectNumber :: !(Maybe (Textual Int64))
    , _irpuarSanityCheck            :: !(Maybe Bool)
    , _irpuarSaltSeparator          :: !(Maybe Base64)
    , _irpuarHashAlgorithm          :: !(Maybe Text)
    , _irpuarSignerKey              :: !(Maybe Base64)
    , _irpuarRounds                 :: !(Maybe (Textual Int32))
    , _irpuarTargetProjectId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyUploadAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpuarUsers'
--
-- * 'irpuarMemoryCost'
--
-- * 'irpuarDelegatedProjectNumber'
--
-- * 'irpuarSanityCheck'
--
-- * 'irpuarSaltSeparator'
--
-- * 'irpuarHashAlgorithm'
--
-- * 'irpuarSignerKey'
--
-- * 'irpuarRounds'
--
-- * 'irpuarTargetProjectId'
identitytoolkitRelyingPartyUploadAccountRequest
    :: IdentitytoolkitRelyingPartyUploadAccountRequest
identitytoolkitRelyingPartyUploadAccountRequest =
    IdentitytoolkitRelyingPartyUploadAccountRequest'
    { _irpuarUsers = Nothing
    , _irpuarMemoryCost = Nothing
    , _irpuarDelegatedProjectNumber = Nothing
    , _irpuarSanityCheck = Nothing
    , _irpuarSaltSeparator = Nothing
    , _irpuarHashAlgorithm = Nothing
    , _irpuarSignerKey = Nothing
    , _irpuarRounds = Nothing
    , _irpuarTargetProjectId = Nothing
    }

-- | The account info to be stored.
irpuarUsers :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest [UserInfo]
irpuarUsers
  = lens _irpuarUsers (\ s a -> s{_irpuarUsers = a}) .
      _Default
      . _Coerce

-- | Memory cost for hash calculation. Used by scrypt similar algorithms.
irpuarMemoryCost :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Int32)
irpuarMemoryCost
  = lens _irpuarMemoryCost
      (\ s a -> s{_irpuarMemoryCost = a})
      . mapping _Coerce

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
irpuarDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Int64)
irpuarDelegatedProjectNumber
  = lens _irpuarDelegatedProjectNumber
      (\ s a -> s{_irpuarDelegatedProjectNumber = a})
      . mapping _Coerce

-- | If true, backend will do sanity check(including duplicate email and
-- federated id) when uploading account.
irpuarSanityCheck :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Bool)
irpuarSanityCheck
  = lens _irpuarSanityCheck
      (\ s a -> s{_irpuarSanityCheck = a})

-- | The salt separator.
irpuarSaltSeparator :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe ByteString)
irpuarSaltSeparator
  = lens _irpuarSaltSeparator
      (\ s a -> s{_irpuarSaltSeparator = a})
      . mapping _Base64

-- | The password hash algorithm.
irpuarHashAlgorithm :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Text)
irpuarHashAlgorithm
  = lens _irpuarHashAlgorithm
      (\ s a -> s{_irpuarHashAlgorithm = a})

-- | The key for to hash the password.
irpuarSignerKey :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe ByteString)
irpuarSignerKey
  = lens _irpuarSignerKey
      (\ s a -> s{_irpuarSignerKey = a})
      . mapping _Base64

-- | Rounds for hash calculation. Used by scrypt and similar algorithms.
irpuarRounds :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Int32)
irpuarRounds
  = lens _irpuarRounds (\ s a -> s{_irpuarRounds = a})
      . mapping _Coerce

-- | Specify which project (field value is actually project id) to operate.
-- Only used when provided credential.
irpuarTargetProjectId :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Text)
irpuarTargetProjectId
  = lens _irpuarTargetProjectId
      (\ s a -> s{_irpuarTargetProjectId = a})

instance FromJSON
         IdentitytoolkitRelyingPartyUploadAccountRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyUploadAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyUploadAccountRequest' <$>
                   (o .:? "users" .!= mempty) <*> (o .:? "memoryCost")
                     <*> (o .:? "delegatedProjectNumber")
                     <*> (o .:? "sanityCheck")
                     <*> (o .:? "saltSeparator")
                     <*> (o .:? "hashAlgorithm")
                     <*> (o .:? "signerKey")
                     <*> (o .:? "rounds")
                     <*> (o .:? "targetProjectId"))

instance ToJSON
         IdentitytoolkitRelyingPartyUploadAccountRequest where
        toJSON
          IdentitytoolkitRelyingPartyUploadAccountRequest'{..}
          = object
              (catMaybes
                 [("users" .=) <$> _irpuarUsers,
                  ("memoryCost" .=) <$> _irpuarMemoryCost,
                  ("delegatedProjectNumber" .=) <$>
                    _irpuarDelegatedProjectNumber,
                  ("sanityCheck" .=) <$> _irpuarSanityCheck,
                  ("saltSeparator" .=) <$> _irpuarSaltSeparator,
                  ("hashAlgorithm" .=) <$> _irpuarHashAlgorithm,
                  ("signerKey" .=) <$> _irpuarSignerKey,
                  ("rounds" .=) <$> _irpuarRounds,
                  ("targetProjectId" .=) <$> _irpuarTargetProjectId])

-- | Request to reset the password.
--
-- /See:/ 'identitytoolkitRelyingPartyResetPasswordRequest' smart constructor.
data IdentitytoolkitRelyingPartyResetPasswordRequest = IdentitytoolkitRelyingPartyResetPasswordRequest'
    { _irprprEmail       :: !(Maybe Text)
    , _irprprNewPassword :: !(Maybe Text)
    , _irprprOOBCode     :: !(Maybe Text)
    , _irprprOldPassword :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyResetPasswordRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irprprEmail'
--
-- * 'irprprNewPassword'
--
-- * 'irprprOOBCode'
--
-- * 'irprprOldPassword'
identitytoolkitRelyingPartyResetPasswordRequest
    :: IdentitytoolkitRelyingPartyResetPasswordRequest
identitytoolkitRelyingPartyResetPasswordRequest =
    IdentitytoolkitRelyingPartyResetPasswordRequest'
    { _irprprEmail = Nothing
    , _irprprNewPassword = Nothing
    , _irprprOOBCode = Nothing
    , _irprprOldPassword = Nothing
    }

-- | The email address of the user.
irprprEmail :: Lens' IdentitytoolkitRelyingPartyResetPasswordRequest (Maybe Text)
irprprEmail
  = lens _irprprEmail (\ s a -> s{_irprprEmail = a})

-- | The new password inputted by the user.
irprprNewPassword :: Lens' IdentitytoolkitRelyingPartyResetPasswordRequest (Maybe Text)
irprprNewPassword
  = lens _irprprNewPassword
      (\ s a -> s{_irprprNewPassword = a})

-- | The confirmation code.
irprprOOBCode :: Lens' IdentitytoolkitRelyingPartyResetPasswordRequest (Maybe Text)
irprprOOBCode
  = lens _irprprOOBCode
      (\ s a -> s{_irprprOOBCode = a})

-- | The old password inputted by the user.
irprprOldPassword :: Lens' IdentitytoolkitRelyingPartyResetPasswordRequest (Maybe Text)
irprprOldPassword
  = lens _irprprOldPassword
      (\ s a -> s{_irprprOldPassword = a})

instance FromJSON
         IdentitytoolkitRelyingPartyResetPasswordRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyResetPasswordRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyResetPasswordRequest' <$>
                   (o .:? "email") <*> (o .:? "newPassword") <*>
                     (o .:? "oobCode")
                     <*> (o .:? "oldPassword"))

instance ToJSON
         IdentitytoolkitRelyingPartyResetPasswordRequest where
        toJSON
          IdentitytoolkitRelyingPartyResetPasswordRequest'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irprprEmail,
                  ("newPassword" .=) <$> _irprprNewPassword,
                  ("oobCode" .=) <$> _irprprOOBCode,
                  ("oldPassword" .=) <$> _irprprOldPassword])

-- | Request to get the IDP authentication URL.
--
-- /See:/ 'identitytoolkitRelyingPartyCreateAuthURIRequest' smart constructor.
data IdentitytoolkitRelyingPartyCreateAuthURIRequest = IdentitytoolkitRelyingPartyCreateAuthURIRequest'
    { _irpcaurProviderId       :: !(Maybe Text)
    , _irpcaurClientId         :: !(Maybe Text)
    , _irpcaurContext          :: !(Maybe Text)
    , _irpcaurCustomParameter  :: !(Maybe IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter)
    , _irpcaurIdentifier       :: !(Maybe Text)
    , _irpcaurOtaApp           :: !(Maybe Text)
    , _irpcaurOAuthConsumerKey :: !(Maybe Text)
    , _irpcaurHostedDomain     :: !(Maybe Text)
    , _irpcaurAppId            :: !(Maybe Text)
    , _irpcaurContinueURI      :: !(Maybe Text)
    , _irpcaurAuthFlowType     :: !(Maybe Text)
    , _irpcaurOAuthScope       :: !(Maybe Text)
    , _irpcaurSessionId        :: !(Maybe Text)
    , _irpcaurOpenidRealm      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyCreateAuthURIRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpcaurProviderId'
--
-- * 'irpcaurClientId'
--
-- * 'irpcaurContext'
--
-- * 'irpcaurCustomParameter'
--
-- * 'irpcaurIdentifier'
--
-- * 'irpcaurOtaApp'
--
-- * 'irpcaurOAuthConsumerKey'
--
-- * 'irpcaurHostedDomain'
--
-- * 'irpcaurAppId'
--
-- * 'irpcaurContinueURI'
--
-- * 'irpcaurAuthFlowType'
--
-- * 'irpcaurOAuthScope'
--
-- * 'irpcaurSessionId'
--
-- * 'irpcaurOpenidRealm'
identitytoolkitRelyingPartyCreateAuthURIRequest
    :: IdentitytoolkitRelyingPartyCreateAuthURIRequest
identitytoolkitRelyingPartyCreateAuthURIRequest =
    IdentitytoolkitRelyingPartyCreateAuthURIRequest'
    { _irpcaurProviderId = Nothing
    , _irpcaurClientId = Nothing
    , _irpcaurContext = Nothing
    , _irpcaurCustomParameter = Nothing
    , _irpcaurIdentifier = Nothing
    , _irpcaurOtaApp = Nothing
    , _irpcaurOAuthConsumerKey = Nothing
    , _irpcaurHostedDomain = Nothing
    , _irpcaurAppId = Nothing
    , _irpcaurContinueURI = Nothing
    , _irpcaurAuthFlowType = Nothing
    , _irpcaurOAuthScope = Nothing
    , _irpcaurSessionId = Nothing
    , _irpcaurOpenidRealm = Nothing
    }

-- | The IdP ID. For white listed IdPs it\'s a short domain name e.g.
-- google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s
-- the OP identifier.
irpcaurProviderId :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurProviderId
  = lens _irpcaurProviderId
      (\ s a -> s{_irpcaurProviderId = a})

-- | The relying party OAuth client ID.
irpcaurClientId :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurClientId
  = lens _irpcaurClientId
      (\ s a -> s{_irpcaurClientId = a})

-- | The opaque value used by the client to maintain context info between the
-- authentication request and the IDP callback.
irpcaurContext :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurContext
  = lens _irpcaurContext
      (\ s a -> s{_irpcaurContext = a})

-- | The query parameter that client can customize by themselves in auth url.
-- The following parameters are reserved for server so that they cannot be
-- customized by clients: client_id, response_type, scope, redirect_uri,
-- state, oauth_token.
irpcaurCustomParameter :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe IdentitytoolkitRelyingPartyCreateAuthURIRequestCustomParameter)
irpcaurCustomParameter
  = lens _irpcaurCustomParameter
      (\ s a -> s{_irpcaurCustomParameter = a})

-- | The email or federated ID of the user.
irpcaurIdentifier :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurIdentifier
  = lens _irpcaurIdentifier
      (\ s a -> s{_irpcaurIdentifier = a})

-- | The native app package for OTA installation.
irpcaurOtaApp :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurOtaApp
  = lens _irpcaurOtaApp
      (\ s a -> s{_irpcaurOtaApp = a})

-- | The developer\'s consumer key for OpenId OAuth Extension
irpcaurOAuthConsumerKey :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurOAuthConsumerKey
  = lens _irpcaurOAuthConsumerKey
      (\ s a -> s{_irpcaurOAuthConsumerKey = a})

-- | The hosted domain to restrict sign-in to accounts at that domain for
-- Google Apps hosted accounts.
irpcaurHostedDomain :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurHostedDomain
  = lens _irpcaurHostedDomain
      (\ s a -> s{_irpcaurHostedDomain = a})

-- | The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for
-- Android, BUNDLE_ID for iOS.
irpcaurAppId :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurAppId
  = lens _irpcaurAppId (\ s a -> s{_irpcaurAppId = a})

-- | The URI to which the IDP redirects the user after the federated login
-- flow.
irpcaurContinueURI :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurContinueURI
  = lens _irpcaurContinueURI
      (\ s a -> s{_irpcaurContinueURI = a})

-- | Explicitly specify the auth flow type. Currently only support
-- \"CODE_FLOW\" type. The field is only used for Google provider.
irpcaurAuthFlowType :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurAuthFlowType
  = lens _irpcaurAuthFlowType
      (\ s a -> s{_irpcaurAuthFlowType = a})

-- | Additional oauth scopes, beyond the basid user profile, that the user
-- would be prompted to grant
irpcaurOAuthScope :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurOAuthScope
  = lens _irpcaurOAuthScope
      (\ s a -> s{_irpcaurOAuthScope = a})

-- | The session_id passed by client.
irpcaurSessionId :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurSessionId
  = lens _irpcaurSessionId
      (\ s a -> s{_irpcaurSessionId = a})

-- | Optional realm for OpenID protocol. The sub string
-- \"scheme:\/\/domain:port\" of the param \"continueUri\" is used if this
-- is not set.
irpcaurOpenidRealm :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurOpenidRealm
  = lens _irpcaurOpenidRealm
      (\ s a -> s{_irpcaurOpenidRealm = a})

instance FromJSON
         IdentitytoolkitRelyingPartyCreateAuthURIRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyCreateAuthURIRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyCreateAuthURIRequest' <$>
                   (o .:? "providerId") <*> (o .:? "clientId") <*>
                     (o .:? "context")
                     <*> (o .:? "customParameter")
                     <*> (o .:? "identifier")
                     <*> (o .:? "otaApp")
                     <*> (o .:? "oauthConsumerKey")
                     <*> (o .:? "hostedDomain")
                     <*> (o .:? "appId")
                     <*> (o .:? "continueUri")
                     <*> (o .:? "authFlowType")
                     <*> (o .:? "oauthScope")
                     <*> (o .:? "sessionId")
                     <*> (o .:? "openidRealm"))

instance ToJSON
         IdentitytoolkitRelyingPartyCreateAuthURIRequest where
        toJSON
          IdentitytoolkitRelyingPartyCreateAuthURIRequest'{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _irpcaurProviderId,
                  ("clientId" .=) <$> _irpcaurClientId,
                  ("context" .=) <$> _irpcaurContext,
                  ("customParameter" .=) <$> _irpcaurCustomParameter,
                  ("identifier" .=) <$> _irpcaurIdentifier,
                  ("otaApp" .=) <$> _irpcaurOtaApp,
                  ("oauthConsumerKey" .=) <$> _irpcaurOAuthConsumerKey,
                  ("hostedDomain" .=) <$> _irpcaurHostedDomain,
                  ("appId" .=) <$> _irpcaurAppId,
                  ("continueUri" .=) <$> _irpcaurContinueURI,
                  ("authFlowType" .=) <$> _irpcaurAuthFlowType,
                  ("oauthScope" .=) <$> _irpcaurOAuthScope,
                  ("sessionId" .=) <$> _irpcaurSessionId,
                  ("openidRealm" .=) <$> _irpcaurOpenidRealm])

-- | Response of getting account information.
--
-- /See:/ 'getAccountInfoResponse' smart constructor.
data GetAccountInfoResponse = GetAccountInfoResponse'
    { _gairUsers :: !(Maybe [UserInfo])
    , _gairKind  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetAccountInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gairUsers'
--
-- * 'gairKind'
getAccountInfoResponse
    :: GetAccountInfoResponse
getAccountInfoResponse =
    GetAccountInfoResponse'
    { _gairUsers = Nothing
    , _gairKind = "identitytoolkit#GetAccountInfoResponse"
    }

-- | The info of the users.
gairUsers :: Lens' GetAccountInfoResponse [UserInfo]
gairUsers
  = lens _gairUsers (\ s a -> s{_gairUsers = a}) .
      _Default
      . _Coerce

-- | The fixed string \"identitytoolkit#GetAccountInfoResponse\".
gairKind :: Lens' GetAccountInfoResponse Text
gairKind = lens _gairKind (\ s a -> s{_gairKind = a})

instance FromJSON GetAccountInfoResponse where
        parseJSON
          = withObject "GetAccountInfoResponse"
              (\ o ->
                 GetAccountInfoResponse' <$>
                   (o .:? "users" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#GetAccountInfoResponse"))

instance ToJSON GetAccountInfoResponse where
        toJSON GetAccountInfoResponse'{..}
          = object
              (catMaybes
                 [("users" .=) <$> _gairUsers,
                  Just ("kind" .= _gairKind)])

-- | Request to delete account.
--
-- /See:/ 'identitytoolkitRelyingPartyDeleteAccountRequest' smart constructor.
data IdentitytoolkitRelyingPartyDeleteAccountRequest = IdentitytoolkitRelyingPartyDeleteAccountRequest'
    { _irpdarDelegatedProjectNumber :: !(Maybe (Textual Int64))
    , _irpdarLocalId                :: !(Maybe Text)
    , _irpdarIdToken                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyDeleteAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpdarDelegatedProjectNumber'
--
-- * 'irpdarLocalId'
--
-- * 'irpdarIdToken'
identitytoolkitRelyingPartyDeleteAccountRequest
    :: IdentitytoolkitRelyingPartyDeleteAccountRequest
identitytoolkitRelyingPartyDeleteAccountRequest =
    IdentitytoolkitRelyingPartyDeleteAccountRequest'
    { _irpdarDelegatedProjectNumber = Nothing
    , _irpdarLocalId = Nothing
    , _irpdarIdToken = Nothing
    }

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
irpdarDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartyDeleteAccountRequest (Maybe Int64)
irpdarDelegatedProjectNumber
  = lens _irpdarDelegatedProjectNumber
      (\ s a -> s{_irpdarDelegatedProjectNumber = a})
      . mapping _Coerce

-- | The local ID of the user.
irpdarLocalId :: Lens' IdentitytoolkitRelyingPartyDeleteAccountRequest (Maybe Text)
irpdarLocalId
  = lens _irpdarLocalId
      (\ s a -> s{_irpdarLocalId = a})

-- | The GITKit token or STS id token of the authenticated user.
irpdarIdToken :: Lens' IdentitytoolkitRelyingPartyDeleteAccountRequest (Maybe Text)
irpdarIdToken
  = lens _irpdarIdToken
      (\ s a -> s{_irpdarIdToken = a})

instance FromJSON
         IdentitytoolkitRelyingPartyDeleteAccountRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyDeleteAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyDeleteAccountRequest' <$>
                   (o .:? "delegatedProjectNumber") <*>
                     (o .:? "localId")
                     <*> (o .:? "idToken"))

instance ToJSON
         IdentitytoolkitRelyingPartyDeleteAccountRequest where
        toJSON
          IdentitytoolkitRelyingPartyDeleteAccountRequest'{..}
          = object
              (catMaybes
                 [("delegatedProjectNumber" .=) <$>
                    _irpdarDelegatedProjectNumber,
                  ("localId" .=) <$> _irpdarLocalId,
                  ("idToken" .=) <$> _irpdarIdToken])

-- | Response of getting a code for user confirmation (reset password, change
-- email etc.).
--
-- /See:/ 'getOOBConfirmationCodeResponse' smart constructor.
data GetOOBConfirmationCodeResponse = GetOOBConfirmationCodeResponse'
    { _goobccrEmail   :: !(Maybe Text)
    , _goobccrKind    :: !Text
    , _goobccrOOBCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOOBConfirmationCodeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goobccrEmail'
--
-- * 'goobccrKind'
--
-- * 'goobccrOOBCode'
getOOBConfirmationCodeResponse
    :: GetOOBConfirmationCodeResponse
getOOBConfirmationCodeResponse =
    GetOOBConfirmationCodeResponse'
    { _goobccrEmail = Nothing
    , _goobccrKind = "identitytoolkit#GetOobConfirmationCodeResponse"
    , _goobccrOOBCode = Nothing
    }

-- | The email address that the email is sent to.
goobccrEmail :: Lens' GetOOBConfirmationCodeResponse (Maybe Text)
goobccrEmail
  = lens _goobccrEmail (\ s a -> s{_goobccrEmail = a})

-- | The fixed string \"identitytoolkit#GetOobConfirmationCodeResponse\".
goobccrKind :: Lens' GetOOBConfirmationCodeResponse Text
goobccrKind
  = lens _goobccrKind (\ s a -> s{_goobccrKind = a})

-- | The code to be send to the user.
goobccrOOBCode :: Lens' GetOOBConfirmationCodeResponse (Maybe Text)
goobccrOOBCode
  = lens _goobccrOOBCode
      (\ s a -> s{_goobccrOOBCode = a})

instance FromJSON GetOOBConfirmationCodeResponse
         where
        parseJSON
          = withObject "GetOOBConfirmationCodeResponse"
              (\ o ->
                 GetOOBConfirmationCodeResponse' <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#GetOobConfirmationCodeResponse")
                     <*> (o .:? "oobCode"))

instance ToJSON GetOOBConfirmationCodeResponse where
        toJSON GetOOBConfirmationCodeResponse'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _goobccrEmail,
                  Just ("kind" .= _goobccrKind),
                  ("oobCode" .=) <$> _goobccrOOBCode])

-- | Request to download user account in batch.
--
-- /See:/ 'identitytoolkitRelyingPartyDownloadAccountRequest' smart constructor.
data IdentitytoolkitRelyingPartyDownloadAccountRequest = IdentitytoolkitRelyingPartyDownloadAccountRequest'
    { _iNextPageToken          :: !(Maybe Text)
    , _iDelegatedProjectNumber :: !(Maybe (Textual Int64))
    , _iMaxResults             :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyDownloadAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iNextPageToken'
--
-- * 'iDelegatedProjectNumber'
--
-- * 'iMaxResults'
identitytoolkitRelyingPartyDownloadAccountRequest
    :: IdentitytoolkitRelyingPartyDownloadAccountRequest
identitytoolkitRelyingPartyDownloadAccountRequest =
    IdentitytoolkitRelyingPartyDownloadAccountRequest'
    { _iNextPageToken = Nothing
    , _iDelegatedProjectNumber = Nothing
    , _iMaxResults = Nothing
    }

-- | The token for the next page. This should be taken from the previous
-- response.
iNextPageToken :: Lens' IdentitytoolkitRelyingPartyDownloadAccountRequest (Maybe Text)
iNextPageToken
  = lens _iNextPageToken
      (\ s a -> s{_iNextPageToken = a})

-- | GCP project number of the requesting delegated app. Currently only
-- intended for Firebase V1 migration.
iDelegatedProjectNumber :: Lens' IdentitytoolkitRelyingPartyDownloadAccountRequest (Maybe Int64)
iDelegatedProjectNumber
  = lens _iDelegatedProjectNumber
      (\ s a -> s{_iDelegatedProjectNumber = a})
      . mapping _Coerce

-- | The max number of results to return in the response.
iMaxResults :: Lens' IdentitytoolkitRelyingPartyDownloadAccountRequest (Maybe Word32)
iMaxResults
  = lens _iMaxResults (\ s a -> s{_iMaxResults = a}) .
      mapping _Coerce

instance FromJSON
         IdentitytoolkitRelyingPartyDownloadAccountRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyDownloadAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyDownloadAccountRequest'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "delegatedProjectNumber")
                     <*> (o .:? "maxResults"))

instance ToJSON
         IdentitytoolkitRelyingPartyDownloadAccountRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyDownloadAccountRequest'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _iNextPageToken,
                  ("delegatedProjectNumber" .=) <$>
                    _iDelegatedProjectNumber,
                  ("maxResults" .=) <$> _iMaxResults])

-- | Request of verifying the password.
--
-- /See:/ 'verifyPasswordResponse' smart constructor.
data VerifyPasswordResponse = VerifyPasswordResponse'
    { _vprEmail                  :: !(Maybe Text)
    , _vprPhotoURL               :: !(Maybe Text)
    , _vprOAuthAccessToken       :: !(Maybe Text)
    , _vprKind                   :: !Text
    , _vprOAuthExpireIn          :: !(Maybe (Textual Int32))
    , _vprRefreshToken           :: !(Maybe Text)
    , _vprExpiresIn              :: !(Maybe (Textual Int64))
    , _vprDisplayName            :: !(Maybe Text)
    , _vprLocalId                :: !(Maybe Text)
    , _vprRegistered             :: !(Maybe Bool)
    , _vprIdToken                :: !(Maybe Text)
    , _vprOAuthAuthorizationCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerifyPasswordResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vprEmail'
--
-- * 'vprPhotoURL'
--
-- * 'vprOAuthAccessToken'
--
-- * 'vprKind'
--
-- * 'vprOAuthExpireIn'
--
-- * 'vprRefreshToken'
--
-- * 'vprExpiresIn'
--
-- * 'vprDisplayName'
--
-- * 'vprLocalId'
--
-- * 'vprRegistered'
--
-- * 'vprIdToken'
--
-- * 'vprOAuthAuthorizationCode'
verifyPasswordResponse
    :: VerifyPasswordResponse
verifyPasswordResponse =
    VerifyPasswordResponse'
    { _vprEmail = Nothing
    , _vprPhotoURL = Nothing
    , _vprOAuthAccessToken = Nothing
    , _vprKind = "identitytoolkit#VerifyPasswordResponse"
    , _vprOAuthExpireIn = Nothing
    , _vprRefreshToken = Nothing
    , _vprExpiresIn = Nothing
    , _vprDisplayName = Nothing
    , _vprLocalId = Nothing
    , _vprRegistered = Nothing
    , _vprIdToken = Nothing
    , _vprOAuthAuthorizationCode = Nothing
    }

-- | The email returned by the IdP. NOTE: The federated login user may not
-- own the email.
vprEmail :: Lens' VerifyPasswordResponse (Maybe Text)
vprEmail = lens _vprEmail (\ s a -> s{_vprEmail = a})

-- | The URI of the user\'s photo at IdP
vprPhotoURL :: Lens' VerifyPasswordResponse (Maybe Text)
vprPhotoURL
  = lens _vprPhotoURL (\ s a -> s{_vprPhotoURL = a})

-- | The OAuth2 access token.
vprOAuthAccessToken :: Lens' VerifyPasswordResponse (Maybe Text)
vprOAuthAccessToken
  = lens _vprOAuthAccessToken
      (\ s a -> s{_vprOAuthAccessToken = a})

-- | The fixed string \"identitytoolkit#VerifyPasswordResponse\".
vprKind :: Lens' VerifyPasswordResponse Text
vprKind = lens _vprKind (\ s a -> s{_vprKind = a})

-- | The lifetime in seconds of the OAuth2 access token.
vprOAuthExpireIn :: Lens' VerifyPasswordResponse (Maybe Int32)
vprOAuthExpireIn
  = lens _vprOAuthExpireIn
      (\ s a -> s{_vprOAuthExpireIn = a})
      . mapping _Coerce

-- | If idToken is STS id token, then this field will be refresh token.
vprRefreshToken :: Lens' VerifyPasswordResponse (Maybe Text)
vprRefreshToken
  = lens _vprRefreshToken
      (\ s a -> s{_vprRefreshToken = a})

-- | If idToken is STS id token, then this field will be expiration time of
-- STS id token in seconds.
vprExpiresIn :: Lens' VerifyPasswordResponse (Maybe Int64)
vprExpiresIn
  = lens _vprExpiresIn (\ s a -> s{_vprExpiresIn = a})
      . mapping _Coerce

-- | The name of the user.
vprDisplayName :: Lens' VerifyPasswordResponse (Maybe Text)
vprDisplayName
  = lens _vprDisplayName
      (\ s a -> s{_vprDisplayName = a})

-- | The RP local ID if it\'s already been mapped to the IdP account
-- identified by the federated ID.
vprLocalId :: Lens' VerifyPasswordResponse (Maybe Text)
vprLocalId
  = lens _vprLocalId (\ s a -> s{_vprLocalId = a})

-- | Whether the email is registered.
vprRegistered :: Lens' VerifyPasswordResponse (Maybe Bool)
vprRegistered
  = lens _vprRegistered
      (\ s a -> s{_vprRegistered = a})

-- | The GITKit token for authenticated user.
vprIdToken :: Lens' VerifyPasswordResponse (Maybe Text)
vprIdToken
  = lens _vprIdToken (\ s a -> s{_vprIdToken = a})

-- | The OAuth2 authorization code.
vprOAuthAuthorizationCode :: Lens' VerifyPasswordResponse (Maybe Text)
vprOAuthAuthorizationCode
  = lens _vprOAuthAuthorizationCode
      (\ s a -> s{_vprOAuthAuthorizationCode = a})

instance FromJSON VerifyPasswordResponse where
        parseJSON
          = withObject "VerifyPasswordResponse"
              (\ o ->
                 VerifyPasswordResponse' <$>
                   (o .:? "email") <*> (o .:? "photoUrl") <*>
                     (o .:? "oauthAccessToken")
                     <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#VerifyPasswordResponse")
                     <*> (o .:? "oauthExpireIn")
                     <*> (o .:? "refreshToken")
                     <*> (o .:? "expiresIn")
                     <*> (o .:? "displayName")
                     <*> (o .:? "localId")
                     <*> (o .:? "registered")
                     <*> (o .:? "idToken")
                     <*> (o .:? "oauthAuthorizationCode"))

instance ToJSON VerifyPasswordResponse where
        toJSON VerifyPasswordResponse'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _vprEmail,
                  ("photoUrl" .=) <$> _vprPhotoURL,
                  ("oauthAccessToken" .=) <$> _vprOAuthAccessToken,
                  Just ("kind" .= _vprKind),
                  ("oauthExpireIn" .=) <$> _vprOAuthExpireIn,
                  ("refreshToken" .=) <$> _vprRefreshToken,
                  ("expiresIn" .=) <$> _vprExpiresIn,
                  ("displayName" .=) <$> _vprDisplayName,
                  ("localId" .=) <$> _vprLocalId,
                  ("registered" .=) <$> _vprRegistered,
                  ("idToken" .=) <$> _vprIdToken,
                  ("oauthAuthorizationCode" .=) <$>
                    _vprOAuthAuthorizationCode])

-- | Respone of setting the account information.
--
-- /See:/ 'setAccountInfoResponse' smart constructor.
data SetAccountInfoResponse = SetAccountInfoResponse'
    { _sairEmail            :: !(Maybe Text)
    , _sairPhotoURL         :: !(Maybe Text)
    , _sairKind             :: !Text
    , _sairRefreshToken     :: !(Maybe Text)
    , _sairProviderUserInfo :: !(Maybe [SetAccountInfoResponseProviderUserInfoItem])
    , _sairExpiresIn        :: !(Maybe (Textual Int64))
    , _sairDisplayName      :: !(Maybe Text)
    , _sairPasswordHash     :: !(Maybe Base64)
    , _sairLocalId          :: !(Maybe Text)
    , _sairNewEmail         :: !(Maybe Text)
    , _sairIdToken          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetAccountInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sairEmail'
--
-- * 'sairPhotoURL'
--
-- * 'sairKind'
--
-- * 'sairRefreshToken'
--
-- * 'sairProviderUserInfo'
--
-- * 'sairExpiresIn'
--
-- * 'sairDisplayName'
--
-- * 'sairPasswordHash'
--
-- * 'sairLocalId'
--
-- * 'sairNewEmail'
--
-- * 'sairIdToken'
setAccountInfoResponse
    :: SetAccountInfoResponse
setAccountInfoResponse =
    SetAccountInfoResponse'
    { _sairEmail = Nothing
    , _sairPhotoURL = Nothing
    , _sairKind = "identitytoolkit#SetAccountInfoResponse"
    , _sairRefreshToken = Nothing
    , _sairProviderUserInfo = Nothing
    , _sairExpiresIn = Nothing
    , _sairDisplayName = Nothing
    , _sairPasswordHash = Nothing
    , _sairLocalId = Nothing
    , _sairNewEmail = Nothing
    , _sairIdToken = Nothing
    }

-- | The email of the user.
sairEmail :: Lens' SetAccountInfoResponse (Maybe Text)
sairEmail
  = lens _sairEmail (\ s a -> s{_sairEmail = a})

-- | The photo url of the user.
sairPhotoURL :: Lens' SetAccountInfoResponse (Maybe Text)
sairPhotoURL
  = lens _sairPhotoURL (\ s a -> s{_sairPhotoURL = a})

-- | The fixed string \"identitytoolkit#SetAccountInfoResponse\".
sairKind :: Lens' SetAccountInfoResponse Text
sairKind = lens _sairKind (\ s a -> s{_sairKind = a})

-- | If idToken is STS id token, then this field will be refresh token.
sairRefreshToken :: Lens' SetAccountInfoResponse (Maybe Text)
sairRefreshToken
  = lens _sairRefreshToken
      (\ s a -> s{_sairRefreshToken = a})

-- | The user\'s profiles at the associated IdPs.
sairProviderUserInfo :: Lens' SetAccountInfoResponse [SetAccountInfoResponseProviderUserInfoItem]
sairProviderUserInfo
  = lens _sairProviderUserInfo
      (\ s a -> s{_sairProviderUserInfo = a})
      . _Default
      . _Coerce

-- | If idToken is STS id token, then this field will be expiration time of
-- STS id token in seconds.
sairExpiresIn :: Lens' SetAccountInfoResponse (Maybe Int64)
sairExpiresIn
  = lens _sairExpiresIn
      (\ s a -> s{_sairExpiresIn = a})
      . mapping _Coerce

-- | The name of the user.
sairDisplayName :: Lens' SetAccountInfoResponse (Maybe Text)
sairDisplayName
  = lens _sairDisplayName
      (\ s a -> s{_sairDisplayName = a})

-- | The user\'s hashed password.
sairPasswordHash :: Lens' SetAccountInfoResponse (Maybe ByteString)
sairPasswordHash
  = lens _sairPasswordHash
      (\ s a -> s{_sairPasswordHash = a})
      . mapping _Base64

-- | The local ID of the user.
sairLocalId :: Lens' SetAccountInfoResponse (Maybe Text)
sairLocalId
  = lens _sairLocalId (\ s a -> s{_sairLocalId = a})

-- | The new email the user attempts to change to.
sairNewEmail :: Lens' SetAccountInfoResponse (Maybe Text)
sairNewEmail
  = lens _sairNewEmail (\ s a -> s{_sairNewEmail = a})

-- | The Gitkit id token to login the newly sign up user.
sairIdToken :: Lens' SetAccountInfoResponse (Maybe Text)
sairIdToken
  = lens _sairIdToken (\ s a -> s{_sairIdToken = a})

instance FromJSON SetAccountInfoResponse where
        parseJSON
          = withObject "SetAccountInfoResponse"
              (\ o ->
                 SetAccountInfoResponse' <$>
                   (o .:? "email") <*> (o .:? "photoUrl") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#SetAccountInfoResponse")
                     <*> (o .:? "refreshToken")
                     <*> (o .:? "providerUserInfo" .!= mempty)
                     <*> (o .:? "expiresIn")
                     <*> (o .:? "displayName")
                     <*> (o .:? "passwordHash")
                     <*> (o .:? "localId")
                     <*> (o .:? "newEmail")
                     <*> (o .:? "idToken"))

instance ToJSON SetAccountInfoResponse where
        toJSON SetAccountInfoResponse'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _sairEmail,
                  ("photoUrl" .=) <$> _sairPhotoURL,
                  Just ("kind" .= _sairKind),
                  ("refreshToken" .=) <$> _sairRefreshToken,
                  ("providerUserInfo" .=) <$> _sairProviderUserInfo,
                  ("expiresIn" .=) <$> _sairExpiresIn,
                  ("displayName" .=) <$> _sairDisplayName,
                  ("passwordHash" .=) <$> _sairPasswordHash,
                  ("localId" .=) <$> _sairLocalId,
                  ("newEmail" .=) <$> _sairNewEmail,
                  ("idToken" .=) <$> _sairIdToken])

-- | Request to signup new user, create anonymous user or anonymous user
-- reauth.
--
-- /See:/ 'identitytoolkitRelyingPartySignupNewUserRequest' smart constructor.
data IdentitytoolkitRelyingPartySignupNewUserRequest = IdentitytoolkitRelyingPartySignupNewUserRequest'
    { _irpsnurEmail            :: !(Maybe Text)
    , _irpsnurInstanceId       :: !(Maybe Text)
    , _irpsnurCaptchaChallenge :: !(Maybe Text)
    , _irpsnurPassword         :: !(Maybe Text)
    , _irpsnurCaptchaResponse  :: !(Maybe Text)
    , _irpsnurDisplayName      :: !(Maybe Text)
    , _irpsnurIdToken          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartySignupNewUserRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpsnurEmail'
--
-- * 'irpsnurInstanceId'
--
-- * 'irpsnurCaptchaChallenge'
--
-- * 'irpsnurPassword'
--
-- * 'irpsnurCaptchaResponse'
--
-- * 'irpsnurDisplayName'
--
-- * 'irpsnurIdToken'
identitytoolkitRelyingPartySignupNewUserRequest
    :: IdentitytoolkitRelyingPartySignupNewUserRequest
identitytoolkitRelyingPartySignupNewUserRequest =
    IdentitytoolkitRelyingPartySignupNewUserRequest'
    { _irpsnurEmail = Nothing
    , _irpsnurInstanceId = Nothing
    , _irpsnurCaptchaChallenge = Nothing
    , _irpsnurPassword = Nothing
    , _irpsnurCaptchaResponse = Nothing
    , _irpsnurDisplayName = Nothing
    , _irpsnurIdToken = Nothing
    }

-- | The email of the user.
irpsnurEmail :: Lens' IdentitytoolkitRelyingPartySignupNewUserRequest (Maybe Text)
irpsnurEmail
  = lens _irpsnurEmail (\ s a -> s{_irpsnurEmail = a})

-- | Instance id token of the app.
irpsnurInstanceId :: Lens' IdentitytoolkitRelyingPartySignupNewUserRequest (Maybe Text)
irpsnurInstanceId
  = lens _irpsnurInstanceId
      (\ s a -> s{_irpsnurInstanceId = a})

-- | The captcha challenge.
irpsnurCaptchaChallenge :: Lens' IdentitytoolkitRelyingPartySignupNewUserRequest (Maybe Text)
irpsnurCaptchaChallenge
  = lens _irpsnurCaptchaChallenge
      (\ s a -> s{_irpsnurCaptchaChallenge = a})

-- | The new password of the user.
irpsnurPassword :: Lens' IdentitytoolkitRelyingPartySignupNewUserRequest (Maybe Text)
irpsnurPassword
  = lens _irpsnurPassword
      (\ s a -> s{_irpsnurPassword = a})

-- | Response to the captcha.
irpsnurCaptchaResponse :: Lens' IdentitytoolkitRelyingPartySignupNewUserRequest (Maybe Text)
irpsnurCaptchaResponse
  = lens _irpsnurCaptchaResponse
      (\ s a -> s{_irpsnurCaptchaResponse = a})

-- | The name of the user.
irpsnurDisplayName :: Lens' IdentitytoolkitRelyingPartySignupNewUserRequest (Maybe Text)
irpsnurDisplayName
  = lens _irpsnurDisplayName
      (\ s a -> s{_irpsnurDisplayName = a})

-- | The GITKit token of the authenticated user.
irpsnurIdToken :: Lens' IdentitytoolkitRelyingPartySignupNewUserRequest (Maybe Text)
irpsnurIdToken
  = lens _irpsnurIdToken
      (\ s a -> s{_irpsnurIdToken = a})

instance FromJSON
         IdentitytoolkitRelyingPartySignupNewUserRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartySignupNewUserRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartySignupNewUserRequest' <$>
                   (o .:? "email") <*> (o .:? "instanceId") <*>
                     (o .:? "captchaChallenge")
                     <*> (o .:? "password")
                     <*> (o .:? "captchaResponse")
                     <*> (o .:? "displayName")
                     <*> (o .:? "idToken"))

instance ToJSON
         IdentitytoolkitRelyingPartySignupNewUserRequest where
        toJSON
          IdentitytoolkitRelyingPartySignupNewUserRequest'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irpsnurEmail,
                  ("instanceId" .=) <$> _irpsnurInstanceId,
                  ("captchaChallenge" .=) <$> _irpsnurCaptchaChallenge,
                  ("password" .=) <$> _irpsnurPassword,
                  ("captchaResponse" .=) <$> _irpsnurCaptchaResponse,
                  ("displayName" .=) <$> _irpsnurDisplayName,
                  ("idToken" .=) <$> _irpsnurIdToken])

-- | Response of verifying the IDP assertion.
--
-- /See:/ 'verifyAssertionResponse' smart constructor.
data VerifyAssertionResponse = VerifyAssertionResponse'
    { _varProviderId             :: !(Maybe Text)
    , _varFullName               :: !(Maybe Text)
    , _varEmail                  :: !(Maybe Text)
    , _varEmailRecycled          :: !(Maybe Bool)
    , _varPhotoURL               :: !(Maybe Text)
    , _varVerifiedProvider       :: !(Maybe [Text])
    , _varContext                :: !(Maybe Text)
    , _varNeedConfirmation       :: !(Maybe Bool)
    , _varOriginalEmail          :: !(Maybe Text)
    , _varLastName               :: !(Maybe Text)
    , _varOAuthAccessToken       :: !(Maybe Text)
    , _varDateOfBirth            :: !(Maybe Text)
    , _varKind                   :: !Text
    , _varRawUserInfo            :: !(Maybe Text)
    , _varOAuthExpireIn          :: !(Maybe (Textual Int32))
    , _varRefreshToken           :: !(Maybe Text)
    , _varAppInstallationURL     :: !(Maybe Text)
    , _varAction                 :: !(Maybe Text)
    , _varNeedEmail              :: !(Maybe Bool)
    , _varFederatedId            :: !(Maybe Text)
    , _varOAuthIdToken           :: !(Maybe Text)
    , _varAppScheme              :: !(Maybe Text)
    , _varExpiresIn              :: !(Maybe (Textual Int64))
    , _varInputEmail             :: !(Maybe Text)
    , _varEmailVerified          :: !(Maybe Bool)
    , _varOAuthTokenSecret       :: !(Maybe Text)
    , _varLanguage               :: !(Maybe Text)
    , _varFirstName              :: !(Maybe Text)
    , _varDisplayName            :: !(Maybe Text)
    , _varOAuthRequestToken      :: !(Maybe Text)
    , _varOAuthScope             :: !(Maybe Text)
    , _varNickName               :: !(Maybe Text)
    , _varLocalId                :: !(Maybe Text)
    , _varTimeZone               :: !(Maybe Text)
    , _varScreenName             :: !(Maybe Text)
    , _varErrorMessage           :: !(Maybe Text)
    , _varIdToken                :: !(Maybe Text)
    , _varOAuthAuthorizationCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerifyAssertionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varProviderId'
--
-- * 'varFullName'
--
-- * 'varEmail'
--
-- * 'varEmailRecycled'
--
-- * 'varPhotoURL'
--
-- * 'varVerifiedProvider'
--
-- * 'varContext'
--
-- * 'varNeedConfirmation'
--
-- * 'varOriginalEmail'
--
-- * 'varLastName'
--
-- * 'varOAuthAccessToken'
--
-- * 'varDateOfBirth'
--
-- * 'varKind'
--
-- * 'varRawUserInfo'
--
-- * 'varOAuthExpireIn'
--
-- * 'varRefreshToken'
--
-- * 'varAppInstallationURL'
--
-- * 'varAction'
--
-- * 'varNeedEmail'
--
-- * 'varFederatedId'
--
-- * 'varOAuthIdToken'
--
-- * 'varAppScheme'
--
-- * 'varExpiresIn'
--
-- * 'varInputEmail'
--
-- * 'varEmailVerified'
--
-- * 'varOAuthTokenSecret'
--
-- * 'varLanguage'
--
-- * 'varFirstName'
--
-- * 'varDisplayName'
--
-- * 'varOAuthRequestToken'
--
-- * 'varOAuthScope'
--
-- * 'varNickName'
--
-- * 'varLocalId'
--
-- * 'varTimeZone'
--
-- * 'varScreenName'
--
-- * 'varErrorMessage'
--
-- * 'varIdToken'
--
-- * 'varOAuthAuthorizationCode'
verifyAssertionResponse
    :: VerifyAssertionResponse
verifyAssertionResponse =
    VerifyAssertionResponse'
    { _varProviderId = Nothing
    , _varFullName = Nothing
    , _varEmail = Nothing
    , _varEmailRecycled = Nothing
    , _varPhotoURL = Nothing
    , _varVerifiedProvider = Nothing
    , _varContext = Nothing
    , _varNeedConfirmation = Nothing
    , _varOriginalEmail = Nothing
    , _varLastName = Nothing
    , _varOAuthAccessToken = Nothing
    , _varDateOfBirth = Nothing
    , _varKind = "identitytoolkit#VerifyAssertionResponse"
    , _varRawUserInfo = Nothing
    , _varOAuthExpireIn = Nothing
    , _varRefreshToken = Nothing
    , _varAppInstallationURL = Nothing
    , _varAction = Nothing
    , _varNeedEmail = Nothing
    , _varFederatedId = Nothing
    , _varOAuthIdToken = Nothing
    , _varAppScheme = Nothing
    , _varExpiresIn = Nothing
    , _varInputEmail = Nothing
    , _varEmailVerified = Nothing
    , _varOAuthTokenSecret = Nothing
    , _varLanguage = Nothing
    , _varFirstName = Nothing
    , _varDisplayName = Nothing
    , _varOAuthRequestToken = Nothing
    , _varOAuthScope = Nothing
    , _varNickName = Nothing
    , _varLocalId = Nothing
    , _varTimeZone = Nothing
    , _varScreenName = Nothing
    , _varErrorMessage = Nothing
    , _varIdToken = Nothing
    , _varOAuthAuthorizationCode = Nothing
    }

-- | The IdP ID. For white listed IdPs it\'s a short domain name e.g.
-- google.com, aol.com, live.net and yahoo.com. If the \"providerId\" param
-- is set to OpenID OP identifer other than the whilte listed IdPs the OP
-- identifier is returned. If the \"identifier\" param is federated ID in
-- the createAuthUri request. The domain part of the federated ID is
-- returned.
varProviderId :: Lens' VerifyAssertionResponse (Maybe Text)
varProviderId
  = lens _varProviderId
      (\ s a -> s{_varProviderId = a})

-- | The full name of the user.
varFullName :: Lens' VerifyAssertionResponse (Maybe Text)
varFullName
  = lens _varFullName (\ s a -> s{_varFullName = a})

-- | The email returned by the IdP. NOTE: The federated login user may not
-- own the email.
varEmail :: Lens' VerifyAssertionResponse (Maybe Text)
varEmail = lens _varEmail (\ s a -> s{_varEmail = a})

-- | It\'s true if the email is recycled.
varEmailRecycled :: Lens' VerifyAssertionResponse (Maybe Bool)
varEmailRecycled
  = lens _varEmailRecycled
      (\ s a -> s{_varEmailRecycled = a})

-- | The URI of the public accessible profiel picture.
varPhotoURL :: Lens' VerifyAssertionResponse (Maybe Text)
varPhotoURL
  = lens _varPhotoURL (\ s a -> s{_varPhotoURL = a})

-- | When action is \'map\', contains the idps which can be used for
-- confirmation.
varVerifiedProvider :: Lens' VerifyAssertionResponse [Text]
varVerifiedProvider
  = lens _varVerifiedProvider
      (\ s a -> s{_varVerifiedProvider = a})
      . _Default
      . _Coerce

-- | The opaque value used by the client to maintain context info between the
-- authentication request and the IDP callback.
varContext :: Lens' VerifyAssertionResponse (Maybe Text)
varContext
  = lens _varContext (\ s a -> s{_varContext = a})

-- | Whether the assertion is from a non-trusted IDP and need account linking
-- confirmation.
varNeedConfirmation :: Lens' VerifyAssertionResponse (Maybe Bool)
varNeedConfirmation
  = lens _varNeedConfirmation
      (\ s a -> s{_varNeedConfirmation = a})

-- | The original email stored in the mapping storage. It\'s returned when
-- the federated ID is associated to a different email.
varOriginalEmail :: Lens' VerifyAssertionResponse (Maybe Text)
varOriginalEmail
  = lens _varOriginalEmail
      (\ s a -> s{_varOriginalEmail = a})

-- | The last name of the user.
varLastName :: Lens' VerifyAssertionResponse (Maybe Text)
varLastName
  = lens _varLastName (\ s a -> s{_varLastName = a})

-- | The OAuth2 access token.
varOAuthAccessToken :: Lens' VerifyAssertionResponse (Maybe Text)
varOAuthAccessToken
  = lens _varOAuthAccessToken
      (\ s a -> s{_varOAuthAccessToken = a})

-- | The birth date of the IdP account.
varDateOfBirth :: Lens' VerifyAssertionResponse (Maybe Text)
varDateOfBirth
  = lens _varDateOfBirth
      (\ s a -> s{_varDateOfBirth = a})

-- | The fixed string \"identitytoolkit#VerifyAssertionResponse\".
varKind :: Lens' VerifyAssertionResponse Text
varKind = lens _varKind (\ s a -> s{_varKind = a})

-- | Raw IDP-returned user info.
varRawUserInfo :: Lens' VerifyAssertionResponse (Maybe Text)
varRawUserInfo
  = lens _varRawUserInfo
      (\ s a -> s{_varRawUserInfo = a})

-- | The lifetime in seconds of the OAuth2 access token.
varOAuthExpireIn :: Lens' VerifyAssertionResponse (Maybe Int32)
varOAuthExpireIn
  = lens _varOAuthExpireIn
      (\ s a -> s{_varOAuthExpireIn = a})
      . mapping _Coerce

-- | If idToken is STS id token, then this field will be refresh token.
varRefreshToken :: Lens' VerifyAssertionResponse (Maybe Text)
varRefreshToken
  = lens _varRefreshToken
      (\ s a -> s{_varRefreshToken = a})

-- | URL for OTA app installation.
varAppInstallationURL :: Lens' VerifyAssertionResponse (Maybe Text)
varAppInstallationURL
  = lens _varAppInstallationURL
      (\ s a -> s{_varAppInstallationURL = a})

-- | The action code.
varAction :: Lens' VerifyAssertionResponse (Maybe Text)
varAction
  = lens _varAction (\ s a -> s{_varAction = a})

-- | Whether need client to supply email to complete the federated login
-- flow.
varNeedEmail :: Lens' VerifyAssertionResponse (Maybe Bool)
varNeedEmail
  = lens _varNeedEmail (\ s a -> s{_varNeedEmail = a})

-- | The unique ID identifies the IdP account.
varFederatedId :: Lens' VerifyAssertionResponse (Maybe Text)
varFederatedId
  = lens _varFederatedId
      (\ s a -> s{_varFederatedId = a})

-- | The OIDC id token.
varOAuthIdToken :: Lens' VerifyAssertionResponse (Maybe Text)
varOAuthIdToken
  = lens _varOAuthIdToken
      (\ s a -> s{_varOAuthIdToken = a})

-- | The custom scheme used by mobile app.
varAppScheme :: Lens' VerifyAssertionResponse (Maybe Text)
varAppScheme
  = lens _varAppScheme (\ s a -> s{_varAppScheme = a})

-- | If idToken is STS id token, then this field will be expiration time of
-- STS id token in seconds.
varExpiresIn :: Lens' VerifyAssertionResponse (Maybe Int64)
varExpiresIn
  = lens _varExpiresIn (\ s a -> s{_varExpiresIn = a})
      . mapping _Coerce

-- | It\'s the identifier param in the createAuthUri request if the
-- identifier is an email. It can be used to check whether the user input
-- email is different from the asserted email.
varInputEmail :: Lens' VerifyAssertionResponse (Maybe Text)
varInputEmail
  = lens _varInputEmail
      (\ s a -> s{_varInputEmail = a})

-- | The value is true if the IDP is also the email provider. It means the
-- user owns the email.
varEmailVerified :: Lens' VerifyAssertionResponse (Maybe Bool)
varEmailVerified
  = lens _varEmailVerified
      (\ s a -> s{_varEmailVerified = a})

-- | The OAuth1 access token secret.
varOAuthTokenSecret :: Lens' VerifyAssertionResponse (Maybe Text)
varOAuthTokenSecret
  = lens _varOAuthTokenSecret
      (\ s a -> s{_varOAuthTokenSecret = a})

-- | The language preference of the user.
varLanguage :: Lens' VerifyAssertionResponse (Maybe Text)
varLanguage
  = lens _varLanguage (\ s a -> s{_varLanguage = a})

-- | The first name of the user.
varFirstName :: Lens' VerifyAssertionResponse (Maybe Text)
varFirstName
  = lens _varFirstName (\ s a -> s{_varFirstName = a})

-- | The display name of the user.
varDisplayName :: Lens' VerifyAssertionResponse (Maybe Text)
varDisplayName
  = lens _varDisplayName
      (\ s a -> s{_varDisplayName = a})

-- | The user approved request token for the OpenID OAuth extension.
varOAuthRequestToken :: Lens' VerifyAssertionResponse (Maybe Text)
varOAuthRequestToken
  = lens _varOAuthRequestToken
      (\ s a -> s{_varOAuthRequestToken = a})

-- | The scope for the OpenID OAuth extension.
varOAuthScope :: Lens' VerifyAssertionResponse (Maybe Text)
varOAuthScope
  = lens _varOAuthScope
      (\ s a -> s{_varOAuthScope = a})

-- | The nick name of the user.
varNickName :: Lens' VerifyAssertionResponse (Maybe Text)
varNickName
  = lens _varNickName (\ s a -> s{_varNickName = a})

-- | The RP local ID if it\'s already been mapped to the IdP account
-- identified by the federated ID.
varLocalId :: Lens' VerifyAssertionResponse (Maybe Text)
varLocalId
  = lens _varLocalId (\ s a -> s{_varLocalId = a})

-- | The timezone of the user.
varTimeZone :: Lens' VerifyAssertionResponse (Maybe Text)
varTimeZone
  = lens _varTimeZone (\ s a -> s{_varTimeZone = a})

-- | The screen_name of a Twitter user or the login name at Github.
varScreenName :: Lens' VerifyAssertionResponse (Maybe Text)
varScreenName
  = lens _varScreenName
      (\ s a -> s{_varScreenName = a})

-- | Client error code.
varErrorMessage :: Lens' VerifyAssertionResponse (Maybe Text)
varErrorMessage
  = lens _varErrorMessage
      (\ s a -> s{_varErrorMessage = a})

-- | The ID token.
varIdToken :: Lens' VerifyAssertionResponse (Maybe Text)
varIdToken
  = lens _varIdToken (\ s a -> s{_varIdToken = a})

-- | The OAuth2 authorization code.
varOAuthAuthorizationCode :: Lens' VerifyAssertionResponse (Maybe Text)
varOAuthAuthorizationCode
  = lens _varOAuthAuthorizationCode
      (\ s a -> s{_varOAuthAuthorizationCode = a})

instance FromJSON VerifyAssertionResponse where
        parseJSON
          = withObject "VerifyAssertionResponse"
              (\ o ->
                 VerifyAssertionResponse' <$>
                   (o .:? "providerId") <*> (o .:? "fullName") <*>
                     (o .:? "email")
                     <*> (o .:? "emailRecycled")
                     <*> (o .:? "photoUrl")
                     <*> (o .:? "verifiedProvider" .!= mempty)
                     <*> (o .:? "context")
                     <*> (o .:? "needConfirmation")
                     <*> (o .:? "originalEmail")
                     <*> (o .:? "lastName")
                     <*> (o .:? "oauthAccessToken")
                     <*> (o .:? "dateOfBirth")
                     <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#VerifyAssertionResponse")
                     <*> (o .:? "rawUserInfo")
                     <*> (o .:? "oauthExpireIn")
                     <*> (o .:? "refreshToken")
                     <*> (o .:? "appInstallationUrl")
                     <*> (o .:? "action")
                     <*> (o .:? "needEmail")
                     <*> (o .:? "federatedId")
                     <*> (o .:? "oauthIdToken")
                     <*> (o .:? "appScheme")
                     <*> (o .:? "expiresIn")
                     <*> (o .:? "inputEmail")
                     <*> (o .:? "emailVerified")
                     <*> (o .:? "oauthTokenSecret")
                     <*> (o .:? "language")
                     <*> (o .:? "firstName")
                     <*> (o .:? "displayName")
                     <*> (o .:? "oauthRequestToken")
                     <*> (o .:? "oauthScope")
                     <*> (o .:? "nickName")
                     <*> (o .:? "localId")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "screenName")
                     <*> (o .:? "errorMessage")
                     <*> (o .:? "idToken")
                     <*> (o .:? "oauthAuthorizationCode"))

instance ToJSON VerifyAssertionResponse where
        toJSON VerifyAssertionResponse'{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _varProviderId,
                  ("fullName" .=) <$> _varFullName,
                  ("email" .=) <$> _varEmail,
                  ("emailRecycled" .=) <$> _varEmailRecycled,
                  ("photoUrl" .=) <$> _varPhotoURL,
                  ("verifiedProvider" .=) <$> _varVerifiedProvider,
                  ("context" .=) <$> _varContext,
                  ("needConfirmation" .=) <$> _varNeedConfirmation,
                  ("originalEmail" .=) <$> _varOriginalEmail,
                  ("lastName" .=) <$> _varLastName,
                  ("oauthAccessToken" .=) <$> _varOAuthAccessToken,
                  ("dateOfBirth" .=) <$> _varDateOfBirth,
                  Just ("kind" .= _varKind),
                  ("rawUserInfo" .=) <$> _varRawUserInfo,
                  ("oauthExpireIn" .=) <$> _varOAuthExpireIn,
                  ("refreshToken" .=) <$> _varRefreshToken,
                  ("appInstallationUrl" .=) <$> _varAppInstallationURL,
                  ("action" .=) <$> _varAction,
                  ("needEmail" .=) <$> _varNeedEmail,
                  ("federatedId" .=) <$> _varFederatedId,
                  ("oauthIdToken" .=) <$> _varOAuthIdToken,
                  ("appScheme" .=) <$> _varAppScheme,
                  ("expiresIn" .=) <$> _varExpiresIn,
                  ("inputEmail" .=) <$> _varInputEmail,
                  ("emailVerified" .=) <$> _varEmailVerified,
                  ("oauthTokenSecret" .=) <$> _varOAuthTokenSecret,
                  ("language" .=) <$> _varLanguage,
                  ("firstName" .=) <$> _varFirstName,
                  ("displayName" .=) <$> _varDisplayName,
                  ("oauthRequestToken" .=) <$> _varOAuthRequestToken,
                  ("oauthScope" .=) <$> _varOAuthScope,
                  ("nickName" .=) <$> _varNickName,
                  ("localId" .=) <$> _varLocalId,
                  ("timeZone" .=) <$> _varTimeZone,
                  ("screenName" .=) <$> _varScreenName,
                  ("errorMessage" .=) <$> _varErrorMessage,
                  ("idToken" .=) <$> _varIdToken,
                  ("oauthAuthorizationCode" .=) <$>
                    _varOAuthAuthorizationCode])

-- | Request to sign out user.
--
-- /See:/ 'identitytoolkitRelyingPartySignOutUserRequest' smart constructor.
data IdentitytoolkitRelyingPartySignOutUserRequest = IdentitytoolkitRelyingPartySignOutUserRequest'
    { _iInstanceId :: !(Maybe Text)
    , _iLocalId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartySignOutUserRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInstanceId'
--
-- * 'iLocalId'
identitytoolkitRelyingPartySignOutUserRequest
    :: IdentitytoolkitRelyingPartySignOutUserRequest
identitytoolkitRelyingPartySignOutUserRequest =
    IdentitytoolkitRelyingPartySignOutUserRequest'
    { _iInstanceId = Nothing
    , _iLocalId = Nothing
    }

-- | Instance id token of the app.
iInstanceId :: Lens' IdentitytoolkitRelyingPartySignOutUserRequest (Maybe Text)
iInstanceId
  = lens _iInstanceId (\ s a -> s{_iInstanceId = a})

-- | The local ID of the user.
iLocalId :: Lens' IdentitytoolkitRelyingPartySignOutUserRequest (Maybe Text)
iLocalId = lens _iLocalId (\ s a -> s{_iLocalId = a})

instance FromJSON
         IdentitytoolkitRelyingPartySignOutUserRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartySignOutUserRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartySignOutUserRequest' <$>
                   (o .:? "instanceId") <*> (o .:? "localId"))

instance ToJSON
         IdentitytoolkitRelyingPartySignOutUserRequest where
        toJSON
          IdentitytoolkitRelyingPartySignOutUserRequest'{..}
          = object
              (catMaybes
                 [("instanceId" .=) <$> _iInstanceId,
                  ("localId" .=) <$> _iLocalId])

-- | Response of getting recaptcha param.
--
-- /See:/ 'getRecaptchaParamResponse' smart constructor.
data GetRecaptchaParamResponse = GetRecaptchaParamResponse'
    { _grprRecaptchaSiteKey :: !(Maybe Text)
    , _grprKind             :: !Text
    , _grprRecaptchaStoken  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetRecaptchaParamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grprRecaptchaSiteKey'
--
-- * 'grprKind'
--
-- * 'grprRecaptchaStoken'
getRecaptchaParamResponse
    :: GetRecaptchaParamResponse
getRecaptchaParamResponse =
    GetRecaptchaParamResponse'
    { _grprRecaptchaSiteKey = Nothing
    , _grprKind = "identitytoolkit#GetRecaptchaParamResponse"
    , _grprRecaptchaStoken = Nothing
    }

-- | Site key registered at recaptcha.
grprRecaptchaSiteKey :: Lens' GetRecaptchaParamResponse (Maybe Text)
grprRecaptchaSiteKey
  = lens _grprRecaptchaSiteKey
      (\ s a -> s{_grprRecaptchaSiteKey = a})

-- | The fixed string \"identitytoolkit#GetRecaptchaParamResponse\".
grprKind :: Lens' GetRecaptchaParamResponse Text
grprKind = lens _grprKind (\ s a -> s{_grprKind = a})

-- | The stoken field for the recaptcha widget, used to request captcha
-- challenge.
grprRecaptchaStoken :: Lens' GetRecaptchaParamResponse (Maybe Text)
grprRecaptchaStoken
  = lens _grprRecaptchaStoken
      (\ s a -> s{_grprRecaptchaStoken = a})

instance FromJSON GetRecaptchaParamResponse where
        parseJSON
          = withObject "GetRecaptchaParamResponse"
              (\ o ->
                 GetRecaptchaParamResponse' <$>
                   (o .:? "recaptchaSiteKey") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#GetRecaptchaParamResponse")
                     <*> (o .:? "recaptchaStoken"))

instance ToJSON GetRecaptchaParamResponse where
        toJSON GetRecaptchaParamResponse'{..}
          = object
              (catMaybes
                 [("recaptchaSiteKey" .=) <$> _grprRecaptchaSiteKey,
                  Just ("kind" .= _grprKind),
                  ("recaptchaStoken" .=) <$> _grprRecaptchaStoken])
