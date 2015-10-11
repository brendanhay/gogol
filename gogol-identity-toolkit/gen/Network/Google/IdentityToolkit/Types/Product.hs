{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IdentityToolkit.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
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
data UploadAccountResponseErrorItem = UploadAccountResponseErrorItem
    { _uareiMessage :: !(Maybe Text)
    , _uareiIndex   :: !(Maybe Int32)
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
    UploadAccountResponseErrorItem
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
  = lens _uareiIndex (\ s a -> s{_uareiIndex = a})

instance FromJSON UploadAccountResponseErrorItem
         where
        parseJSON
          = withObject "UploadAccountResponseErrorItem"
              (\ o ->
                 UploadAccountResponseErrorItem <$>
                   (o .:? "message") <*> (o .:? "index"))

instance ToJSON UploadAccountResponseErrorItem where
        toJSON UploadAccountResponseErrorItem{..}
          = object
              (catMaybes
                 [("message" .=) <$> _uareiMessage,
                  ("index" .=) <$> _uareiIndex])

--
-- /See:/ 'userInfoProviderUserInfoItem' smart constructor.
data UserInfoProviderUserInfoItem = UserInfoProviderUserInfoItem
    { _uipuiiProviderId  :: !(Maybe Text)
    , _uipuiiPhotoURL    :: !(Maybe Text)
    , _uipuiiFederatedId :: !(Maybe Text)
    , _uipuiiDisplayName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfoProviderUserInfoItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uipuiiProviderId'
--
-- * 'uipuiiPhotoURL'
--
-- * 'uipuiiFederatedId'
--
-- * 'uipuiiDisplayName'
userInfoProviderUserInfoItem
    :: UserInfoProviderUserInfoItem
userInfoProviderUserInfoItem =
    UserInfoProviderUserInfoItem
    { _uipuiiProviderId = Nothing
    , _uipuiiPhotoURL = Nothing
    , _uipuiiFederatedId = Nothing
    , _uipuiiDisplayName = Nothing
    }

-- | The IdP ID. For white listed IdPs it\'s a short domain name, e.g.,
-- google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s
-- the OP identifier.
uipuiiProviderId :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiProviderId
  = lens _uipuiiProviderId
      (\ s a -> s{_uipuiiProviderId = a})

-- | The user\'s photo url at the IDP.
uipuiiPhotoURL :: Lens' UserInfoProviderUserInfoItem (Maybe Text)
uipuiiPhotoURL
  = lens _uipuiiPhotoURL
      (\ s a -> s{_uipuiiPhotoURL = a})

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

instance FromJSON UserInfoProviderUserInfoItem where
        parseJSON
          = withObject "UserInfoProviderUserInfoItem"
              (\ o ->
                 UserInfoProviderUserInfoItem <$>
                   (o .:? "providerId") <*> (o .:? "photoUrl") <*>
                     (o .:? "federatedId")
                     <*> (o .:? "displayName"))

instance ToJSON UserInfoProviderUserInfoItem where
        toJSON UserInfoProviderUserInfoItem{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _uipuiiProviderId,
                  ("photoUrl" .=) <$> _uipuiiPhotoURL,
                  ("federatedId" .=) <$> _uipuiiFederatedId,
                  ("displayName" .=) <$> _uipuiiDisplayName])

-- | Template for an individual account info.
--
-- /See:/ 'userInfo' smart constructor.
data UserInfo = UserInfo
    { _uiEmail             :: !(Maybe Text)
    , _uiPhotoURL          :: !(Maybe Text)
    , _uiDisabled          :: !(Maybe Bool)
    , _uiProviderUserInfo  :: !(Maybe [UserInfoProviderUserInfoItem])
    , _uiValidSince        :: !(Maybe Int64)
    , _uiPasswordUpdatedAt :: !(Maybe Double)
    , _uiVersion           :: !(Maybe Int32)
    , _uiEmailVerified     :: !(Maybe Bool)
    , _uiSalt              :: !(Maybe Word8)
    , _uiDisplayName       :: !(Maybe Text)
    , _uiPasswordHash      :: !(Maybe Word8)
    , _uiLocalId           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiEmail'
--
-- * 'uiPhotoURL'
--
-- * 'uiDisabled'
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
userInfo
    :: UserInfo
userInfo =
    UserInfo
    { _uiEmail = Nothing
    , _uiPhotoURL = Nothing
    , _uiDisabled = Nothing
    , _uiProviderUserInfo = Nothing
    , _uiValidSince = Nothing
    , _uiPasswordUpdatedAt = Nothing
    , _uiVersion = Nothing
    , _uiEmailVerified = Nothing
    , _uiSalt = Nothing
    , _uiDisplayName = Nothing
    , _uiPasswordHash = Nothing
    , _uiLocalId = Nothing
    }

-- | The email of the user.
uiEmail :: Lens' UserInfo (Maybe Text)
uiEmail = lens _uiEmail (\ s a -> s{_uiEmail = a})

-- | The URL of the user profile photo.
uiPhotoURL :: Lens' UserInfo (Maybe Text)
uiPhotoURL
  = lens _uiPhotoURL (\ s a -> s{_uiPhotoURL = a})

-- | Whether the user is disabled.
uiDisabled :: Lens' UserInfo (Maybe Bool)
uiDisabled
  = lens _uiDisabled (\ s a -> s{_uiDisabled = a})

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

-- | The timestamp when the password was last updated.
uiPasswordUpdatedAt :: Lens' UserInfo (Maybe Double)
uiPasswordUpdatedAt
  = lens _uiPasswordUpdatedAt
      (\ s a -> s{_uiPasswordUpdatedAt = a})

-- | Version of the user\'s password.
uiVersion :: Lens' UserInfo (Maybe Int32)
uiVersion
  = lens _uiVersion (\ s a -> s{_uiVersion = a})

-- | Whether the email has been verified.
uiEmailVerified :: Lens' UserInfo (Maybe Bool)
uiEmailVerified
  = lens _uiEmailVerified
      (\ s a -> s{_uiEmailVerified = a})

-- | The user\'s password salt.
uiSalt :: Lens' UserInfo (Maybe Word8)
uiSalt = lens _uiSalt (\ s a -> s{_uiSalt = a})

-- | The name of the user.
uiDisplayName :: Lens' UserInfo (Maybe Text)
uiDisplayName
  = lens _uiDisplayName
      (\ s a -> s{_uiDisplayName = a})

-- | The user\'s hashed password.
uiPasswordHash :: Lens' UserInfo (Maybe Word8)
uiPasswordHash
  = lens _uiPasswordHash
      (\ s a -> s{_uiPasswordHash = a})

-- | The local ID of the user.
uiLocalId :: Lens' UserInfo (Maybe Text)
uiLocalId
  = lens _uiLocalId (\ s a -> s{_uiLocalId = a})

instance FromJSON UserInfo where
        parseJSON
          = withObject "UserInfo"
              (\ o ->
                 UserInfo <$>
                   (o .:? "email") <*> (o .:? "photoUrl") <*>
                     (o .:? "disabled")
                     <*> (o .:? "providerUserInfo" .!= mempty)
                     <*> (o .:? "validSince")
                     <*> (o .:? "passwordUpdatedAt")
                     <*> (o .:? "version")
                     <*> (o .:? "emailVerified")
                     <*> (o .:? "salt")
                     <*> (o .:? "displayName")
                     <*> (o .:? "passwordHash")
                     <*> (o .:? "localId"))

instance ToJSON UserInfo where
        toJSON UserInfo{..}
          = object
              (catMaybes
                 [("email" .=) <$> _uiEmail,
                  ("photoUrl" .=) <$> _uiPhotoURL,
                  ("disabled" .=) <$> _uiDisabled,
                  ("providerUserInfo" .=) <$> _uiProviderUserInfo,
                  ("validSince" .=) <$> _uiValidSince,
                  ("passwordUpdatedAt" .=) <$> _uiPasswordUpdatedAt,
                  ("version" .=) <$> _uiVersion,
                  ("emailVerified" .=) <$> _uiEmailVerified,
                  ("salt" .=) <$> _uiSalt,
                  ("displayName" .=) <$> _uiDisplayName,
                  ("passwordHash" .=) <$> _uiPasswordHash,
                  ("localId" .=) <$> _uiLocalId])

--
-- /See:/ 'setAccountInfoResponseProviderUserInfoItem' smart constructor.
data SetAccountInfoResponseProviderUserInfoItem = SetAccountInfoResponseProviderUserInfoItem
    { _sairpuiiProviderId  :: !(Maybe Text)
    , _sairpuiiPhotoURL    :: !(Maybe Text)
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
-- * 'sairpuiiDisplayName'
setAccountInfoResponseProviderUserInfoItem
    :: SetAccountInfoResponseProviderUserInfoItem
setAccountInfoResponseProviderUserInfoItem =
    SetAccountInfoResponseProviderUserInfoItem
    { _sairpuiiProviderId = Nothing
    , _sairpuiiPhotoURL = Nothing
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
                 SetAccountInfoResponseProviderUserInfoItem <$>
                   (o .:? "providerId") <*> (o .:? "photoUrl") <*>
                     (o .:? "displayName"))

instance ToJSON
         SetAccountInfoResponseProviderUserInfoItem where
        toJSON SetAccountInfoResponseProviderUserInfoItem{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _sairpuiiProviderId,
                  ("photoUrl" .=) <$> _sairpuiiPhotoURL,
                  ("displayName" .=) <$> _sairpuiiDisplayName])

-- | Request to verify the password.
--
-- /See:/ 'identitytoolkitRelyingPartyVerifyPasswordRequest' smart constructor.
data IdentitytoolkitRelyingPartyVerifyPasswordRequest = IdentitytoolkitRelyingPartyVerifyPasswordRequest
    { _irpvprEmail            :: !(Maybe Text)
    , _irpvprCaptchaChallenge :: !(Maybe Text)
    , _irpvprPassword         :: !(Maybe Text)
    , _irpvprCaptchaResponse  :: !(Maybe Text)
    , _irpvprPendingIdToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyVerifyPasswordRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpvprEmail'
--
-- * 'irpvprCaptchaChallenge'
--
-- * 'irpvprPassword'
--
-- * 'irpvprCaptchaResponse'
--
-- * 'irpvprPendingIdToken'
identitytoolkitRelyingPartyVerifyPasswordRequest
    :: IdentitytoolkitRelyingPartyVerifyPasswordRequest
identitytoolkitRelyingPartyVerifyPasswordRequest =
    IdentitytoolkitRelyingPartyVerifyPasswordRequest
    { _irpvprEmail = Nothing
    , _irpvprCaptchaChallenge = Nothing
    , _irpvprPassword = Nothing
    , _irpvprCaptchaResponse = Nothing
    , _irpvprPendingIdToken = Nothing
    }

-- | The email of the user.
irpvprEmail :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprEmail
  = lens _irpvprEmail (\ s a -> s{_irpvprEmail = a})

-- | The captcha challenge.
irpvprCaptchaChallenge :: Lens' IdentitytoolkitRelyingPartyVerifyPasswordRequest (Maybe Text)
irpvprCaptchaChallenge
  = lens _irpvprCaptchaChallenge
      (\ s a -> s{_irpvprCaptchaChallenge = a})

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
                 IdentitytoolkitRelyingPartyVerifyPasswordRequest <$>
                   (o .:? "email") <*> (o .:? "captchaChallenge") <*>
                     (o .:? "password")
                     <*> (o .:? "captchaResponse")
                     <*> (o .:? "pendingIdToken"))

instance ToJSON
         IdentitytoolkitRelyingPartyVerifyPasswordRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyVerifyPasswordRequest{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irpvprEmail,
                  ("captchaChallenge" .=) <$> _irpvprCaptchaChallenge,
                  ("password" .=) <$> _irpvprPassword,
                  ("captchaResponse" .=) <$> _irpvprCaptchaResponse,
                  ("pendingIdToken" .=) <$> _irpvprPendingIdToken])

-- | Request to set the account information.
--
-- /See:/ 'identitytoolkitRelyingPartySetAccountInfoRequest' smart constructor.
data IdentitytoolkitRelyingPartySetAccountInfoRequest = IdentitytoolkitRelyingPartySetAccountInfoRequest
    { _irpsairUpgradeToFederatedLogin :: !(Maybe Bool)
    , _irpsairEmail                   :: !(Maybe Text)
    , _irpsairCaptchaChallenge        :: !(Maybe Text)
    , _irpsairValidSince              :: !(Maybe Int64)
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
-- * 'irpsairCaptchaChallenge'
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
    IdentitytoolkitRelyingPartySetAccountInfoRequest
    { _irpsairUpgradeToFederatedLogin = Nothing
    , _irpsairEmail = Nothing
    , _irpsairCaptchaChallenge = Nothing
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

-- | The captcha challenge.
irpsairCaptchaChallenge :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Text)
irpsairCaptchaChallenge
  = lens _irpsairCaptchaChallenge
      (\ s a -> s{_irpsairCaptchaChallenge = a})

-- | Timestamp in seconds for valid login token.
irpsairValidSince :: Lens' IdentitytoolkitRelyingPartySetAccountInfoRequest (Maybe Int64)
irpsairValidSince
  = lens _irpsairValidSince
      (\ s a -> s{_irpsairValidSince = a})

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
                 IdentitytoolkitRelyingPartySetAccountInfoRequest <$>
                   (o .:? "upgradeToFederatedLogin") <*> (o .:? "email")
                     <*> (o .:? "captchaChallenge")
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
          IdentitytoolkitRelyingPartySetAccountInfoRequest{..}
          = object
              (catMaybes
                 [("upgradeToFederatedLogin" .=) <$>
                    _irpsairUpgradeToFederatedLogin,
                  ("email" .=) <$> _irpsairEmail,
                  ("captchaChallenge" .=) <$> _irpsairCaptchaChallenge,
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
data IdentitytoolkitRelyingPartyVerifyAssertionRequest = IdentitytoolkitRelyingPartyVerifyAssertionRequest
    { _irpvarPostBody           :: !(Maybe Text)
    , _irpvarReturnRefreshToken :: !(Maybe Bool)
    , _irpvarRequestURI         :: !(Maybe Text)
    , _irpvarPendingIdToken     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyVerifyAssertionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpvarPostBody'
--
-- * 'irpvarReturnRefreshToken'
--
-- * 'irpvarRequestURI'
--
-- * 'irpvarPendingIdToken'
identitytoolkitRelyingPartyVerifyAssertionRequest
    :: IdentitytoolkitRelyingPartyVerifyAssertionRequest
identitytoolkitRelyingPartyVerifyAssertionRequest =
    IdentitytoolkitRelyingPartyVerifyAssertionRequest
    { _irpvarPostBody = Nothing
    , _irpvarReturnRefreshToken = Nothing
    , _irpvarRequestURI = Nothing
    , _irpvarPendingIdToken = Nothing
    }

-- | The post body if the request is a HTTP POST.
irpvarPostBody :: Lens' IdentitytoolkitRelyingPartyVerifyAssertionRequest (Maybe Text)
irpvarPostBody
  = lens _irpvarPostBody
      (\ s a -> s{_irpvarPostBody = a})

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
                 IdentitytoolkitRelyingPartyVerifyAssertionRequest <$>
                   (o .:? "postBody") <*> (o .:? "returnRefreshToken")
                     <*> (o .:? "requestUri")
                     <*> (o .:? "pendingIdToken"))

instance ToJSON
         IdentitytoolkitRelyingPartyVerifyAssertionRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyVerifyAssertionRequest{..}
          = object
              (catMaybes
                 [("postBody" .=) <$> _irpvarPostBody,
                  ("returnRefreshToken" .=) <$>
                    _irpvarReturnRefreshToken,
                  ("requestUri" .=) <$> _irpvarRequestURI,
                  ("pendingIdToken" .=) <$> _irpvarPendingIdToken])

-- | Respone of deleting account.
--
-- /See:/ 'deleteAccountResponse' smart constructor.
newtype DeleteAccountResponse = DeleteAccountResponse
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
    DeleteAccountResponse
    { _darKind = "identitytoolkit#DeleteAccountResponse"
    }

-- | The fixed string \"identitytoolkit#DeleteAccountResponse\".
darKind :: Lens' DeleteAccountResponse Text
darKind = lens _darKind (\ s a -> s{_darKind = a})

instance FromJSON DeleteAccountResponse where
        parseJSON
          = withObject "DeleteAccountResponse"
              (\ o ->
                 DeleteAccountResponse <$>
                   (o .:? "kind" .!=
                      "identitytoolkit#DeleteAccountResponse"))

instance ToJSON DeleteAccountResponse where
        toJSON DeleteAccountResponse{..}
          = object (catMaybes [Just ("kind" .= _darKind)])

-- | Respone of downloading accounts in batch.
--
-- /See:/ 'downloadAccountResponse' smart constructor.
data DownloadAccountResponse = DownloadAccountResponse
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
    DownloadAccountResponse
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
                 DownloadAccountResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "users" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#DownloadAccountResponse"))

instance ToJSON DownloadAccountResponse where
        toJSON DownloadAccountResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dNextPageToken,
                  ("users" .=) <$> _dUsers, Just ("kind" .= _dKind)])

-- | Response of resetting the password.
--
-- /See:/ 'resetPasswordResponse' smart constructor.
data ResetPasswordResponse = ResetPasswordResponse
    { _rprEmail :: !(Maybe Text)
    , _rprKind  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResetPasswordResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprEmail'
--
-- * 'rprKind'
resetPasswordResponse
    :: ResetPasswordResponse
resetPasswordResponse =
    ResetPasswordResponse
    { _rprEmail = Nothing
    , _rprKind = "identitytoolkit#ResetPasswordResponse"
    }

-- | The user\'s email.
rprEmail :: Lens' ResetPasswordResponse (Maybe Text)
rprEmail = lens _rprEmail (\ s a -> s{_rprEmail = a})

-- | The fixed string \"identitytoolkit#ResetPasswordResponse\".
rprKind :: Lens' ResetPasswordResponse Text
rprKind = lens _rprKind (\ s a -> s{_rprKind = a})

instance FromJSON ResetPasswordResponse where
        parseJSON
          = withObject "ResetPasswordResponse"
              (\ o ->
                 ResetPasswordResponse <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#ResetPasswordResponse"))

instance ToJSON ResetPasswordResponse where
        toJSON ResetPasswordResponse{..}
          = object
              (catMaybes
                 [("email" .=) <$> _rprEmail,
                  Just ("kind" .= _rprKind)])

-- | Respone of uploading accounts in batch.
--
-- /See:/ 'uploadAccountResponse' smart constructor.
data UploadAccountResponse = UploadAccountResponse
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
    UploadAccountResponse
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
                 UploadAccountResponse <$>
                   (o .:? "kind" .!=
                      "identitytoolkit#UploadAccountResponse")
                     <*> (o .:? "error" .!= mempty))

instance ToJSON UploadAccountResponse where
        toJSON UploadAccountResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _uarKind),
                  ("error" .=) <$> _uarError])

-- | Response of creating the IDP authentication URL.
--
-- /See:/ 'createAuthURIResponse' smart constructor.
data CreateAuthURIResponse = CreateAuthURIResponse
    { _caurProviderId          :: !(Maybe Text)
    , _caurKind                :: !Text
    , _caurAuthURI             :: !(Maybe Text)
    , _caurCaptchaRequired     :: !(Maybe Bool)
    , _caurRegistered          :: !(Maybe Bool)
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
-- * 'caurAuthURI'
--
-- * 'caurCaptchaRequired'
--
-- * 'caurRegistered'
--
-- * 'caurForExistingProvider'
createAuthURIResponse
    :: CreateAuthURIResponse
createAuthURIResponse =
    CreateAuthURIResponse
    { _caurProviderId = Nothing
    , _caurKind = "identitytoolkit#CreateAuthUriResponse"
    , _caurAuthURI = Nothing
    , _caurCaptchaRequired = Nothing
    , _caurRegistered = Nothing
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

-- | True if the authUri is for user\'s existing provider.
caurForExistingProvider :: Lens' CreateAuthURIResponse (Maybe Bool)
caurForExistingProvider
  = lens _caurForExistingProvider
      (\ s a -> s{_caurForExistingProvider = a})

instance FromJSON CreateAuthURIResponse where
        parseJSON
          = withObject "CreateAuthURIResponse"
              (\ o ->
                 CreateAuthURIResponse <$>
                   (o .:? "providerId") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#CreateAuthUriResponse")
                     <*> (o .:? "authUri")
                     <*> (o .:? "captchaRequired")
                     <*> (o .:? "registered")
                     <*> (o .:? "forExistingProvider"))

instance ToJSON CreateAuthURIResponse where
        toJSON CreateAuthURIResponse{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _caurProviderId,
                  Just ("kind" .= _caurKind),
                  ("authUri" .=) <$> _caurAuthURI,
                  ("captchaRequired" .=) <$> _caurCaptchaRequired,
                  ("registered" .=) <$> _caurRegistered,
                  ("forExistingProvider" .=) <$>
                    _caurForExistingProvider])

-- | Respone of getting public keys.
--
-- /See:/ 'identitytoolkitRelyingPartyGetPublicKeysResponse' smart constructor.
newtype IdentitytoolkitRelyingPartyGetPublicKeysResponse = IdentitytoolkitRelyingPartyGetPublicKeysResponse
    { _irpgpkrProperties :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyGetPublicKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpgpkrProperties'
identitytoolkitRelyingPartyGetPublicKeysResponse
    :: HashMap Text Text -- ^ 'properties'
    -> IdentitytoolkitRelyingPartyGetPublicKeysResponse
identitytoolkitRelyingPartyGetPublicKeysResponse pIrpgpkrProperties_ =
    IdentitytoolkitRelyingPartyGetPublicKeysResponse
    { _irpgpkrProperties = pIrpgpkrProperties_
    }

irpgpkrProperties :: Lens' IdentitytoolkitRelyingPartyGetPublicKeysResponse (HashMap Text Text)
irpgpkrProperties
  = lens _irpgpkrProperties
      (\ s a -> s{_irpgpkrProperties = a})

instance FromJSON
         IdentitytoolkitRelyingPartyGetPublicKeysResponse
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyGetPublicKeysResponse"
              (\ o ->
                 IdentitytoolkitRelyingPartyGetPublicKeysResponse <$>
                   (parseJSONObject o))

instance ToJSON
         IdentitytoolkitRelyingPartyGetPublicKeysResponse
         where
        toJSON = toJSON . _irpgpkrProperties

-- | Request of getting a code for user confirmation (reset password, change
-- email etc.)
--
-- /See:/ 'relyingParty' smart constructor.
data RelyingParty = RelyingParty
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
    RelyingParty
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
                 RelyingParty <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!= "identitytoolkit#relyingparty")
                     <*> (o .:? "userIp")
                     <*> (o .:? "requestType")
                     <*> (o .:? "captchaResp")
                     <*> (o .:? "newEmail")
                     <*> (o .:? "challenge")
                     <*> (o .:? "idToken"))

instance ToJSON RelyingParty where
        toJSON RelyingParty{..}
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
data IdentitytoolkitRelyingPartyGetAccountInfoRequest = IdentitytoolkitRelyingPartyGetAccountInfoRequest
    { _irpgairEmail   :: !(Maybe [Text])
    , _irpgairLocalId :: !(Maybe [Text])
    , _irpgairIdToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyGetAccountInfoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpgairEmail'
--
-- * 'irpgairLocalId'
--
-- * 'irpgairIdToken'
identitytoolkitRelyingPartyGetAccountInfoRequest
    :: IdentitytoolkitRelyingPartyGetAccountInfoRequest
identitytoolkitRelyingPartyGetAccountInfoRequest =
    IdentitytoolkitRelyingPartyGetAccountInfoRequest
    { _irpgairEmail = Nothing
    , _irpgairLocalId = Nothing
    , _irpgairIdToken = Nothing
    }

-- | The list of emails of the users to inquiry.
irpgairEmail :: Lens' IdentitytoolkitRelyingPartyGetAccountInfoRequest [Text]
irpgairEmail
  = lens _irpgairEmail (\ s a -> s{_irpgairEmail = a})
      . _Default
      . _Coerce

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
                 IdentitytoolkitRelyingPartyGetAccountInfoRequest <$>
                   (o .:? "email" .!= mempty) <*>
                     (o .:? "localId" .!= mempty)
                     <*> (o .:? "idToken"))

instance ToJSON
         IdentitytoolkitRelyingPartyGetAccountInfoRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyGetAccountInfoRequest{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irpgairEmail,
                  ("localId" .=) <$> _irpgairLocalId,
                  ("idToken" .=) <$> _irpgairIdToken])

-- | Request to upload user account in batch.
--
-- /See:/ 'identitytoolkitRelyingPartyUploadAccountRequest' smart constructor.
data IdentitytoolkitRelyingPartyUploadAccountRequest = IdentitytoolkitRelyingPartyUploadAccountRequest
    { _irpuarUsers         :: !(Maybe [UserInfo])
    , _irpuarMemoryCost    :: !(Maybe Int32)
    , _irpuarSaltSeparator :: !(Maybe Word8)
    , _irpuarHashAlgorithm :: !(Maybe Text)
    , _irpuarSignerKey     :: !(Maybe Word8)
    , _irpuarRounds        :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyUploadAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpuarUsers'
--
-- * 'irpuarMemoryCost'
--
-- * 'irpuarSaltSeparator'
--
-- * 'irpuarHashAlgorithm'
--
-- * 'irpuarSignerKey'
--
-- * 'irpuarRounds'
identitytoolkitRelyingPartyUploadAccountRequest
    :: IdentitytoolkitRelyingPartyUploadAccountRequest
identitytoolkitRelyingPartyUploadAccountRequest =
    IdentitytoolkitRelyingPartyUploadAccountRequest
    { _irpuarUsers = Nothing
    , _irpuarMemoryCost = Nothing
    , _irpuarSaltSeparator = Nothing
    , _irpuarHashAlgorithm = Nothing
    , _irpuarSignerKey = Nothing
    , _irpuarRounds = Nothing
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

-- | The salt separator.
irpuarSaltSeparator :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Word8)
irpuarSaltSeparator
  = lens _irpuarSaltSeparator
      (\ s a -> s{_irpuarSaltSeparator = a})

-- | The password hash algorithm.
irpuarHashAlgorithm :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Text)
irpuarHashAlgorithm
  = lens _irpuarHashAlgorithm
      (\ s a -> s{_irpuarHashAlgorithm = a})

-- | The key for to hash the password.
irpuarSignerKey :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Word8)
irpuarSignerKey
  = lens _irpuarSignerKey
      (\ s a -> s{_irpuarSignerKey = a})

-- | Rounds for hash calculation. Used by scrypt and similar algorithms.
irpuarRounds :: Lens' IdentitytoolkitRelyingPartyUploadAccountRequest (Maybe Int32)
irpuarRounds
  = lens _irpuarRounds (\ s a -> s{_irpuarRounds = a})

instance FromJSON
         IdentitytoolkitRelyingPartyUploadAccountRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyUploadAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyUploadAccountRequest <$>
                   (o .:? "users" .!= mempty) <*> (o .:? "memoryCost")
                     <*> (o .:? "saltSeparator")
                     <*> (o .:? "hashAlgorithm")
                     <*> (o .:? "signerKey")
                     <*> (o .:? "rounds"))

instance ToJSON
         IdentitytoolkitRelyingPartyUploadAccountRequest where
        toJSON
          IdentitytoolkitRelyingPartyUploadAccountRequest{..}
          = object
              (catMaybes
                 [("users" .=) <$> _irpuarUsers,
                  ("memoryCost" .=) <$> _irpuarMemoryCost,
                  ("saltSeparator" .=) <$> _irpuarSaltSeparator,
                  ("hashAlgorithm" .=) <$> _irpuarHashAlgorithm,
                  ("signerKey" .=) <$> _irpuarSignerKey,
                  ("rounds" .=) <$> _irpuarRounds])

-- | Request to reset the password.
--
-- /See:/ 'identitytoolkitRelyingPartyResetPasswordRequest' smart constructor.
data IdentitytoolkitRelyingPartyResetPasswordRequest = IdentitytoolkitRelyingPartyResetPasswordRequest
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
    IdentitytoolkitRelyingPartyResetPasswordRequest
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
                 IdentitytoolkitRelyingPartyResetPasswordRequest <$>
                   (o .:? "email") <*> (o .:? "newPassword") <*>
                     (o .:? "oobCode")
                     <*> (o .:? "oldPassword"))

instance ToJSON
         IdentitytoolkitRelyingPartyResetPasswordRequest where
        toJSON
          IdentitytoolkitRelyingPartyResetPasswordRequest{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irprprEmail,
                  ("newPassword" .=) <$> _irprprNewPassword,
                  ("oobCode" .=) <$> _irprprOOBCode,
                  ("oldPassword" .=) <$> _irprprOldPassword])

-- | Request to get the IDP authentication URL.
--
-- /See:/ 'identitytoolkitRelyingPartyCreateAuthURIRequest' smart constructor.
data IdentitytoolkitRelyingPartyCreateAuthURIRequest = IdentitytoolkitRelyingPartyCreateAuthURIRequest
    { _irpcaurProviderId       :: !(Maybe Text)
    , _irpcaurClientId         :: !(Maybe Text)
    , _irpcaurContext          :: !(Maybe Text)
    , _irpcaurIdentifier       :: !(Maybe Text)
    , _irpcaurOtaApp           :: !(Maybe Text)
    , _irpcaurOAuthConsumerKey :: !(Maybe Text)
    , _irpcaurAppId            :: !(Maybe Text)
    , _irpcaurContinueURI      :: !(Maybe Text)
    , _irpcaurOAuthScope       :: !(Maybe Text)
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
-- * 'irpcaurIdentifier'
--
-- * 'irpcaurOtaApp'
--
-- * 'irpcaurOAuthConsumerKey'
--
-- * 'irpcaurAppId'
--
-- * 'irpcaurContinueURI'
--
-- * 'irpcaurOAuthScope'
--
-- * 'irpcaurOpenidRealm'
identitytoolkitRelyingPartyCreateAuthURIRequest
    :: IdentitytoolkitRelyingPartyCreateAuthURIRequest
identitytoolkitRelyingPartyCreateAuthURIRequest =
    IdentitytoolkitRelyingPartyCreateAuthURIRequest
    { _irpcaurProviderId = Nothing
    , _irpcaurClientId = Nothing
    , _irpcaurContext = Nothing
    , _irpcaurIdentifier = Nothing
    , _irpcaurOtaApp = Nothing
    , _irpcaurOAuthConsumerKey = Nothing
    , _irpcaurAppId = Nothing
    , _irpcaurContinueURI = Nothing
    , _irpcaurOAuthScope = Nothing
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

-- | Additional oauth scopes, beyond the basid user profile, that the user
-- would be prompted to grant
irpcaurOAuthScope :: Lens' IdentitytoolkitRelyingPartyCreateAuthURIRequest (Maybe Text)
irpcaurOAuthScope
  = lens _irpcaurOAuthScope
      (\ s a -> s{_irpcaurOAuthScope = a})

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
                 IdentitytoolkitRelyingPartyCreateAuthURIRequest <$>
                   (o .:? "providerId") <*> (o .:? "clientId") <*>
                     (o .:? "context")
                     <*> (o .:? "identifier")
                     <*> (o .:? "otaApp")
                     <*> (o .:? "oauthConsumerKey")
                     <*> (o .:? "appId")
                     <*> (o .:? "continueUri")
                     <*> (o .:? "oauthScope")
                     <*> (o .:? "openidRealm"))

instance ToJSON
         IdentitytoolkitRelyingPartyCreateAuthURIRequest where
        toJSON
          IdentitytoolkitRelyingPartyCreateAuthURIRequest{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _irpcaurProviderId,
                  ("clientId" .=) <$> _irpcaurClientId,
                  ("context" .=) <$> _irpcaurContext,
                  ("identifier" .=) <$> _irpcaurIdentifier,
                  ("otaApp" .=) <$> _irpcaurOtaApp,
                  ("oauthConsumerKey" .=) <$> _irpcaurOAuthConsumerKey,
                  ("appId" .=) <$> _irpcaurAppId,
                  ("continueUri" .=) <$> _irpcaurContinueURI,
                  ("oauthScope" .=) <$> _irpcaurOAuthScope,
                  ("openidRealm" .=) <$> _irpcaurOpenidRealm])

-- | Response of getting account information.
--
-- /See:/ 'getAccountInfoResponse' smart constructor.
data GetAccountInfoResponse = GetAccountInfoResponse
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
    GetAccountInfoResponse
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
                 GetAccountInfoResponse <$>
                   (o .:? "users" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#GetAccountInfoResponse"))

instance ToJSON GetAccountInfoResponse where
        toJSON GetAccountInfoResponse{..}
          = object
              (catMaybes
                 [("users" .=) <$> _gairUsers,
                  Just ("kind" .= _gairKind)])

-- | Request to delete account.
--
-- /See:/ 'identitytoolkitRelyingPartyDeleteAccountRequest' smart constructor.
newtype IdentitytoolkitRelyingPartyDeleteAccountRequest = IdentitytoolkitRelyingPartyDeleteAccountRequest
    { _irpdarLocalId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyDeleteAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpdarLocalId'
identitytoolkitRelyingPartyDeleteAccountRequest
    :: IdentitytoolkitRelyingPartyDeleteAccountRequest
identitytoolkitRelyingPartyDeleteAccountRequest =
    IdentitytoolkitRelyingPartyDeleteAccountRequest
    { _irpdarLocalId = Nothing
    }

-- | The local ID of the user.
irpdarLocalId :: Lens' IdentitytoolkitRelyingPartyDeleteAccountRequest (Maybe Text)
irpdarLocalId
  = lens _irpdarLocalId
      (\ s a -> s{_irpdarLocalId = a})

instance FromJSON
         IdentitytoolkitRelyingPartyDeleteAccountRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyDeleteAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyDeleteAccountRequest <$>
                   (o .:? "localId"))

instance ToJSON
         IdentitytoolkitRelyingPartyDeleteAccountRequest where
        toJSON
          IdentitytoolkitRelyingPartyDeleteAccountRequest{..}
          = object
              (catMaybes [("localId" .=) <$> _irpdarLocalId])

-- | Response of getting a code for user confirmation (reset password, change
-- email etc.).
--
-- /See:/ 'getOOBConfirmationCodeResponse' smart constructor.
data GetOOBConfirmationCodeResponse = GetOOBConfirmationCodeResponse
    { _goobccrKind    :: !Text
    , _goobccrOOBCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOOBConfirmationCodeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goobccrKind'
--
-- * 'goobccrOOBCode'
getOOBConfirmationCodeResponse
    :: GetOOBConfirmationCodeResponse
getOOBConfirmationCodeResponse =
    GetOOBConfirmationCodeResponse
    { _goobccrKind = "identitytoolkit#GetOobConfirmationCodeResponse"
    , _goobccrOOBCode = Nothing
    }

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
                 GetOOBConfirmationCodeResponse <$>
                   (o .:? "kind" .!=
                      "identitytoolkit#GetOobConfirmationCodeResponse")
                     <*> (o .:? "oobCode"))

instance ToJSON GetOOBConfirmationCodeResponse where
        toJSON GetOOBConfirmationCodeResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _goobccrKind),
                  ("oobCode" .=) <$> _goobccrOOBCode])

-- | Request to download user account in batch.
--
-- /See:/ 'identitytoolkitRelyingPartyDownloadAccountRequest' smart constructor.
data IdentitytoolkitRelyingPartyDownloadAccountRequest = IdentitytoolkitRelyingPartyDownloadAccountRequest
    { _irpdarNextPageToken :: !(Maybe Text)
    , _irpdarMaxResults    :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingPartyDownloadAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irpdarNextPageToken'
--
-- * 'irpdarMaxResults'
identitytoolkitRelyingPartyDownloadAccountRequest
    :: IdentitytoolkitRelyingPartyDownloadAccountRequest
identitytoolkitRelyingPartyDownloadAccountRequest =
    IdentitytoolkitRelyingPartyDownloadAccountRequest
    { _irpdarNextPageToken = Nothing
    , _irpdarMaxResults = Nothing
    }

-- | The token for the next page. This should be taken from the previous
-- response.
irpdarNextPageToken :: Lens' IdentitytoolkitRelyingPartyDownloadAccountRequest (Maybe Text)
irpdarNextPageToken
  = lens _irpdarNextPageToken
      (\ s a -> s{_irpdarNextPageToken = a})

-- | The max number of results to return in the response.
irpdarMaxResults :: Lens' IdentitytoolkitRelyingPartyDownloadAccountRequest (Maybe Word32)
irpdarMaxResults
  = lens _irpdarMaxResults
      (\ s a -> s{_irpdarMaxResults = a})

instance FromJSON
         IdentitytoolkitRelyingPartyDownloadAccountRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingPartyDownloadAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingPartyDownloadAccountRequest <$>
                   (o .:? "nextPageToken") <*> (o .:? "maxResults"))

instance ToJSON
         IdentitytoolkitRelyingPartyDownloadAccountRequest
         where
        toJSON
          IdentitytoolkitRelyingPartyDownloadAccountRequest{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _irpdarNextPageToken,
                  ("maxResults" .=) <$> _irpdarMaxResults])

-- | Request of verifying the password.
--
-- /See:/ 'verifyPasswordResponse' smart constructor.
data VerifyPasswordResponse = VerifyPasswordResponse
    { _vprEmail                  :: !(Maybe Text)
    , _vprPhotoURL               :: !(Maybe Text)
    , _vprOAuthAccessToken       :: !(Maybe Text)
    , _vprKind                   :: !Text
    , _vprOAuthExpireIn          :: !(Maybe Int32)
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
    VerifyPasswordResponse
    { _vprEmail = Nothing
    , _vprPhotoURL = Nothing
    , _vprOAuthAccessToken = Nothing
    , _vprKind = "identitytoolkit#VerifyPasswordResponse"
    , _vprOAuthExpireIn = Nothing
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
                 VerifyPasswordResponse <$>
                   (o .:? "email") <*> (o .:? "photoUrl") <*>
                     (o .:? "oauthAccessToken")
                     <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#VerifyPasswordResponse")
                     <*> (o .:? "oauthExpireIn")
                     <*> (o .:? "displayName")
                     <*> (o .:? "localId")
                     <*> (o .:? "registered")
                     <*> (o .:? "idToken")
                     <*> (o .:? "oauthAuthorizationCode"))

instance ToJSON VerifyPasswordResponse where
        toJSON VerifyPasswordResponse{..}
          = object
              (catMaybes
                 [("email" .=) <$> _vprEmail,
                  ("photoUrl" .=) <$> _vprPhotoURL,
                  ("oauthAccessToken" .=) <$> _vprOAuthAccessToken,
                  Just ("kind" .= _vprKind),
                  ("oauthExpireIn" .=) <$> _vprOAuthExpireIn,
                  ("displayName" .=) <$> _vprDisplayName,
                  ("localId" .=) <$> _vprLocalId,
                  ("registered" .=) <$> _vprRegistered,
                  ("idToken" .=) <$> _vprIdToken,
                  ("oauthAuthorizationCode" .=) <$>
                    _vprOAuthAuthorizationCode])

-- | Respone of setting the account information.
--
-- /See:/ 'setAccountInfoResponse' smart constructor.
data SetAccountInfoResponse = SetAccountInfoResponse
    { _sairEmail            :: !(Maybe Text)
    , _sairKind             :: !Text
    , _sairProviderUserInfo :: !(Maybe [SetAccountInfoResponseProviderUserInfoItem])
    , _sairDisplayName      :: !(Maybe Text)
    , _sairNewEmail         :: !(Maybe Text)
    , _sairIdToken          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetAccountInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sairEmail'
--
-- * 'sairKind'
--
-- * 'sairProviderUserInfo'
--
-- * 'sairDisplayName'
--
-- * 'sairNewEmail'
--
-- * 'sairIdToken'
setAccountInfoResponse
    :: SetAccountInfoResponse
setAccountInfoResponse =
    SetAccountInfoResponse
    { _sairEmail = Nothing
    , _sairKind = "identitytoolkit#SetAccountInfoResponse"
    , _sairProviderUserInfo = Nothing
    , _sairDisplayName = Nothing
    , _sairNewEmail = Nothing
    , _sairIdToken = Nothing
    }

-- | The email of the user.
sairEmail :: Lens' SetAccountInfoResponse (Maybe Text)
sairEmail
  = lens _sairEmail (\ s a -> s{_sairEmail = a})

-- | The fixed string \"identitytoolkit#SetAccountInfoResponse\".
sairKind :: Lens' SetAccountInfoResponse Text
sairKind = lens _sairKind (\ s a -> s{_sairKind = a})

-- | The user\'s profiles at the associated IdPs.
sairProviderUserInfo :: Lens' SetAccountInfoResponse [SetAccountInfoResponseProviderUserInfoItem]
sairProviderUserInfo
  = lens _sairProviderUserInfo
      (\ s a -> s{_sairProviderUserInfo = a})
      . _Default
      . _Coerce

-- | The name of the user.
sairDisplayName :: Lens' SetAccountInfoResponse (Maybe Text)
sairDisplayName
  = lens _sairDisplayName
      (\ s a -> s{_sairDisplayName = a})

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
                 SetAccountInfoResponse <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#SetAccountInfoResponse")
                     <*> (o .:? "providerUserInfo" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "newEmail")
                     <*> (o .:? "idToken"))

instance ToJSON SetAccountInfoResponse where
        toJSON SetAccountInfoResponse{..}
          = object
              (catMaybes
                 [("email" .=) <$> _sairEmail,
                  Just ("kind" .= _sairKind),
                  ("providerUserInfo" .=) <$> _sairProviderUserInfo,
                  ("displayName" .=) <$> _sairDisplayName,
                  ("newEmail" .=) <$> _sairNewEmail,
                  ("idToken" .=) <$> _sairIdToken])

-- | Response of verifying the IDP assertion.
--
-- /See:/ 'verifyAssertionResponse' smart constructor.
data VerifyAssertionResponse = VerifyAssertionResponse
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
    , _varOAuthExpireIn          :: !(Maybe Int32)
    , _varAppInstallationURL     :: !(Maybe Text)
    , _varAction                 :: !(Maybe Text)
    , _varFederatedId            :: !(Maybe Text)
    , _varAppScheme              :: !(Maybe Text)
    , _varInputEmail             :: !(Maybe Text)
    , _varEmailVerified          :: !(Maybe Bool)
    , _varLanguage               :: !(Maybe Text)
    , _varFirstName              :: !(Maybe Text)
    , _varDisplayName            :: !(Maybe Text)
    , _varOAuthRequestToken      :: !(Maybe Text)
    , _varOAuthScope             :: !(Maybe Text)
    , _varNickName               :: !(Maybe Text)
    , _varLocalId                :: !(Maybe Text)
    , _varTimeZone               :: !(Maybe Text)
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
-- * 'varOAuthExpireIn'
--
-- * 'varAppInstallationURL'
--
-- * 'varAction'
--
-- * 'varFederatedId'
--
-- * 'varAppScheme'
--
-- * 'varInputEmail'
--
-- * 'varEmailVerified'
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
-- * 'varIdToken'
--
-- * 'varOAuthAuthorizationCode'
verifyAssertionResponse
    :: VerifyAssertionResponse
verifyAssertionResponse =
    VerifyAssertionResponse
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
    , _varOAuthExpireIn = Nothing
    , _varAppInstallationURL = Nothing
    , _varAction = Nothing
    , _varFederatedId = Nothing
    , _varAppScheme = Nothing
    , _varInputEmail = Nothing
    , _varEmailVerified = Nothing
    , _varLanguage = Nothing
    , _varFirstName = Nothing
    , _varDisplayName = Nothing
    , _varOAuthRequestToken = Nothing
    , _varOAuthScope = Nothing
    , _varNickName = Nothing
    , _varLocalId = Nothing
    , _varTimeZone = Nothing
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

-- | The lifetime in seconds of the OAuth2 access token.
varOAuthExpireIn :: Lens' VerifyAssertionResponse (Maybe Int32)
varOAuthExpireIn
  = lens _varOAuthExpireIn
      (\ s a -> s{_varOAuthExpireIn = a})

-- | URL for OTA app installation.
varAppInstallationURL :: Lens' VerifyAssertionResponse (Maybe Text)
varAppInstallationURL
  = lens _varAppInstallationURL
      (\ s a -> s{_varAppInstallationURL = a})

-- | The action code.
varAction :: Lens' VerifyAssertionResponse (Maybe Text)
varAction
  = lens _varAction (\ s a -> s{_varAction = a})

-- | The unique ID identifies the IdP account.
varFederatedId :: Lens' VerifyAssertionResponse (Maybe Text)
varFederatedId
  = lens _varFederatedId
      (\ s a -> s{_varFederatedId = a})

-- | The custom scheme used by mobile app.
varAppScheme :: Lens' VerifyAssertionResponse (Maybe Text)
varAppScheme
  = lens _varAppScheme (\ s a -> s{_varAppScheme = a})

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
                 VerifyAssertionResponse <$>
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
                     <*> (o .:? "oauthExpireIn")
                     <*> (o .:? "appInstallationUrl")
                     <*> (o .:? "action")
                     <*> (o .:? "federatedId")
                     <*> (o .:? "appScheme")
                     <*> (o .:? "inputEmail")
                     <*> (o .:? "emailVerified")
                     <*> (o .:? "language")
                     <*> (o .:? "firstName")
                     <*> (o .:? "displayName")
                     <*> (o .:? "oauthRequestToken")
                     <*> (o .:? "oauthScope")
                     <*> (o .:? "nickName")
                     <*> (o .:? "localId")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "idToken")
                     <*> (o .:? "oauthAuthorizationCode"))

instance ToJSON VerifyAssertionResponse where
        toJSON VerifyAssertionResponse{..}
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
                  ("oauthExpireIn" .=) <$> _varOAuthExpireIn,
                  ("appInstallationUrl" .=) <$> _varAppInstallationURL,
                  ("action" .=) <$> _varAction,
                  ("federatedId" .=) <$> _varFederatedId,
                  ("appScheme" .=) <$> _varAppScheme,
                  ("inputEmail" .=) <$> _varInputEmail,
                  ("emailVerified" .=) <$> _varEmailVerified,
                  ("language" .=) <$> _varLanguage,
                  ("firstName" .=) <$> _varFirstName,
                  ("displayName" .=) <$> _varDisplayName,
                  ("oauthRequestToken" .=) <$> _varOAuthRequestToken,
                  ("oauthScope" .=) <$> _varOAuthScope,
                  ("nickName" .=) <$> _varNickName,
                  ("localId" .=) <$> _varLocalId,
                  ("timeZone" .=) <$> _varTimeZone,
                  ("idToken" .=) <$> _varIdToken,
                  ("oauthAuthorizationCode" .=) <$>
                    _varOAuthAuthorizationCode])

-- | Response of getting recaptcha param.
--
-- /See:/ 'getRecaptchaParamResponse' smart constructor.
data GetRecaptchaParamResponse = GetRecaptchaParamResponse
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
    GetRecaptchaParamResponse
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
                 GetRecaptchaParamResponse <$>
                   (o .:? "recaptchaSiteKey") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#GetRecaptchaParamResponse")
                     <*> (o .:? "recaptchaStoken"))

instance ToJSON GetRecaptchaParamResponse where
        toJSON GetRecaptchaParamResponse{..}
          = object
              (catMaybes
                 [("recaptchaSiteKey" .=) <$> _grprRecaptchaSiteKey,
                  Just ("kind" .= _grprKind),
                  ("recaptchaStoken" .=) <$> _grprRecaptchaStoken])
