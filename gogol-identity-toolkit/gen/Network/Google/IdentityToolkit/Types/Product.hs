{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

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

-- | Response of creating the IDP authentication URL.
--
-- /See:/ 'createAuthUriResponse' smart constructor.
data CreateAuthUriResponse = CreateAuthUriResponse
    { _caurProviderId          :: !(Maybe Text)
    , _caurKind                :: !Text
    , _caurAuthUri             :: !(Maybe Text)
    , _caurCaptchaRequired     :: !(Maybe Bool)
    , _caurRegistered          :: !(Maybe Bool)
    , _caurForExistingProvider :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateAuthUriResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caurProviderId'
--
-- * 'caurKind'
--
-- * 'caurAuthUri'
--
-- * 'caurCaptchaRequired'
--
-- * 'caurRegistered'
--
-- * 'caurForExistingProvider'
createAuthUriResponse
    :: CreateAuthUriResponse
createAuthUriResponse =
    CreateAuthUriResponse
    { _caurProviderId = Nothing
    , _caurKind = "identitytoolkit#CreateAuthUriResponse"
    , _caurAuthUri = Nothing
    , _caurCaptchaRequired = Nothing
    , _caurRegistered = Nothing
    , _caurForExistingProvider = Nothing
    }

-- | The provider ID of the auth URI.
caurProviderId :: Lens' CreateAuthUriResponse (Maybe Text)
caurProviderId
  = lens _caurProviderId
      (\ s a -> s{_caurProviderId = a})

-- | The fixed string identitytoolkit#CreateAuthUriResponse\".
caurKind :: Lens' CreateAuthUriResponse Text
caurKind = lens _caurKind (\ s a -> s{_caurKind = a})

-- | The URI used by the IDP to authenticate the user.
caurAuthUri :: Lens' CreateAuthUriResponse (Maybe Text)
caurAuthUri
  = lens _caurAuthUri (\ s a -> s{_caurAuthUri = a})

-- | True if captcha is required.
caurCaptchaRequired :: Lens' CreateAuthUriResponse (Maybe Bool)
caurCaptchaRequired
  = lens _caurCaptchaRequired
      (\ s a -> s{_caurCaptchaRequired = a})

-- | Whether the user is registered if the identifier is an email.
caurRegistered :: Lens' CreateAuthUriResponse (Maybe Bool)
caurRegistered
  = lens _caurRegistered
      (\ s a -> s{_caurRegistered = a})

-- | True if the authUri is for user\'s existing provider.
caurForExistingProvider :: Lens' CreateAuthUriResponse (Maybe Bool)
caurForExistingProvider
  = lens _caurForExistingProvider
      (\ s a -> s{_caurForExistingProvider = a})

instance FromJSON CreateAuthUriResponse where
        parseJSON
          = withObject "CreateAuthUriResponse"
              (\ o ->
                 CreateAuthUriResponse <$>
                   (o .:? "providerId") <*>
                     (o .:? "kind" .!=
                        "identitytoolkit#CreateAuthUriResponse")
                     <*> (o .:? "authUri")
                     <*> (o .:? "captchaRequired")
                     <*> (o .:? "registered")
                     <*> (o .:? "forExistingProvider"))

instance ToJSON CreateAuthUriResponse where
        toJSON CreateAuthUriResponse{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _caurProviderId,
                  Just ("kind" .= _caurKind),
                  ("authUri" .=) <$> _caurAuthUri,
                  ("captchaRequired" .=) <$> _caurCaptchaRequired,
                  ("registered" .=) <$> _caurRegistered,
                  ("forExistingProvider" .=) <$>
                    _caurForExistingProvider])

-- | Respone of deleting account.
--
-- /See:/ 'deleteAccountResponse' smart constructor.
newtype DeleteAccountResponse = DeleteAccountResponse
    { _dKind :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKind'
deleteAccountResponse
    :: DeleteAccountResponse
deleteAccountResponse =
    DeleteAccountResponse
    { _dKind = "identitytoolkit#DeleteAccountResponse"
    }

-- | The fixed string \"identitytoolkit#DeleteAccountResponse\".
dKind :: Lens' DeleteAccountResponse Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

instance FromJSON DeleteAccountResponse where
        parseJSON
          = withObject "DeleteAccountResponse"
              (\ o ->
                 DeleteAccountResponse <$>
                   (o .:? "kind" .!=
                      "identitytoolkit#DeleteAccountResponse"))

instance ToJSON DeleteAccountResponse where
        toJSON DeleteAccountResponse{..}
          = object (catMaybes [Just ("kind" .= _dKind)])

-- | Respone of downloading accounts in batch.
--
-- /See:/ 'downloadAccountResponse' smart constructor.
data DownloadAccountResponse = DownloadAccountResponse
    { _darNextPageToken :: !(Maybe Text)
    , _darUsers         :: !(Maybe [Maybe UserInfo])
    , _darKind          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DownloadAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darNextPageToken'
--
-- * 'darUsers'
--
-- * 'darKind'
downloadAccountResponse
    :: DownloadAccountResponse
downloadAccountResponse =
    DownloadAccountResponse
    { _darNextPageToken = Nothing
    , _darUsers = Nothing
    , _darKind = "identitytoolkit#DownloadAccountResponse"
    }

-- | The next page token. To be used in a subsequent request to return the
-- next page of results.
darNextPageToken :: Lens' DownloadAccountResponse (Maybe Text)
darNextPageToken
  = lens _darNextPageToken
      (\ s a -> s{_darNextPageToken = a})

-- | The user accounts data.
darUsers :: Lens' DownloadAccountResponse [Maybe UserInfo]
darUsers
  = lens _darUsers (\ s a -> s{_darUsers = a}) .
      _Default
      . _Coerce

-- | The fixed string \"identitytoolkit#DownloadAccountResponse\".
darKind :: Lens' DownloadAccountResponse Text
darKind = lens _darKind (\ s a -> s{_darKind = a})

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
                 [("nextPageToken" .=) <$> _darNextPageToken,
                  ("users" .=) <$> _darUsers,
                  Just ("kind" .= _darKind)])

-- | Response of getting account information.
--
-- /See:/ 'getAccountInfoResponse' smart constructor.
data GetAccountInfoResponse = GetAccountInfoResponse
    { _gairUsers :: !(Maybe [Maybe UserInfo])
    , _gairKind  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
gairUsers :: Lens' GetAccountInfoResponse [Maybe UserInfo]
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

-- | Response of getting a code for user confirmation (reset password, change
-- email etc.).
--
-- /See:/ 'getOobConfirmationCodeResponse' smart constructor.
data GetOobConfirmationCodeResponse = GetOobConfirmationCodeResponse
    { _goccrKind    :: !Text
    , _goccrOobCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOobConfirmationCodeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goccrKind'
--
-- * 'goccrOobCode'
getOobConfirmationCodeResponse
    :: GetOobConfirmationCodeResponse
getOobConfirmationCodeResponse =
    GetOobConfirmationCodeResponse
    { _goccrKind = "identitytoolkit#GetOobConfirmationCodeResponse"
    , _goccrOobCode = Nothing
    }

-- | The fixed string \"identitytoolkit#GetOobConfirmationCodeResponse\".
goccrKind :: Lens' GetOobConfirmationCodeResponse Text
goccrKind
  = lens _goccrKind (\ s a -> s{_goccrKind = a})

-- | The code to be send to the user.
goccrOobCode :: Lens' GetOobConfirmationCodeResponse (Maybe Text)
goccrOobCode
  = lens _goccrOobCode (\ s a -> s{_goccrOobCode = a})

instance FromJSON GetOobConfirmationCodeResponse
         where
        parseJSON
          = withObject "GetOobConfirmationCodeResponse"
              (\ o ->
                 GetOobConfirmationCodeResponse <$>
                   (o .:? "kind" .!=
                      "identitytoolkit#GetOobConfirmationCodeResponse")
                     <*> (o .:? "oobCode"))

instance ToJSON GetOobConfirmationCodeResponse where
        toJSON GetOobConfirmationCodeResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _goccrKind),
                  ("oobCode" .=) <$> _goccrOobCode])

-- | Response of getting recaptcha param.
--
-- /See:/ 'getRecaptchaParamResponse' smart constructor.
data GetRecaptchaParamResponse = GetRecaptchaParamResponse
    { _grprRecaptchaSiteKey :: !(Maybe Text)
    , _grprKind             :: !Text
    , _grprRecaptchaStoken  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Request to get the IDP authentication URL.
--
-- /See:/ 'identitytoolkitRelyingpartyCreateAuthUriRequest' smart constructor.
data IdentitytoolkitRelyingpartyCreateAuthUriRequest = IdentitytoolkitRelyingpartyCreateAuthUriRequest
    { _ircaurProviderId       :: !(Maybe Text)
    , _ircaurClientId         :: !(Maybe Text)
    , _ircaurContext          :: !(Maybe Text)
    , _ircaurIdentifier       :: !(Maybe Text)
    , _ircaurOtaApp           :: !(Maybe Text)
    , _ircaurOauthConsumerKey :: !(Maybe Text)
    , _ircaurAppId            :: !(Maybe Text)
    , _ircaurContinueUri      :: !(Maybe Text)
    , _ircaurOauthScope       :: !(Maybe Text)
    , _ircaurOpenidRealm      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyCreateAuthUriRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ircaurProviderId'
--
-- * 'ircaurClientId'
--
-- * 'ircaurContext'
--
-- * 'ircaurIdentifier'
--
-- * 'ircaurOtaApp'
--
-- * 'ircaurOauthConsumerKey'
--
-- * 'ircaurAppId'
--
-- * 'ircaurContinueUri'
--
-- * 'ircaurOauthScope'
--
-- * 'ircaurOpenidRealm'
identitytoolkitRelyingpartyCreateAuthUriRequest
    :: IdentitytoolkitRelyingpartyCreateAuthUriRequest
identitytoolkitRelyingpartyCreateAuthUriRequest =
    IdentitytoolkitRelyingpartyCreateAuthUriRequest
    { _ircaurProviderId = Nothing
    , _ircaurClientId = Nothing
    , _ircaurContext = Nothing
    , _ircaurIdentifier = Nothing
    , _ircaurOtaApp = Nothing
    , _ircaurOauthConsumerKey = Nothing
    , _ircaurAppId = Nothing
    , _ircaurContinueUri = Nothing
    , _ircaurOauthScope = Nothing
    , _ircaurOpenidRealm = Nothing
    }

-- | The IdP ID. For white listed IdPs it\'s a short domain name e.g.
-- google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s
-- the OP identifier.
ircaurProviderId :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurProviderId
  = lens _ircaurProviderId
      (\ s a -> s{_ircaurProviderId = a})

-- | The relying party OAuth client ID.
ircaurClientId :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurClientId
  = lens _ircaurClientId
      (\ s a -> s{_ircaurClientId = a})

-- | The opaque value used by the client to maintain context info between the
-- authentication request and the IDP callback.
ircaurContext :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurContext
  = lens _ircaurContext
      (\ s a -> s{_ircaurContext = a})

-- | The email or federated ID of the user.
ircaurIdentifier :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurIdentifier
  = lens _ircaurIdentifier
      (\ s a -> s{_ircaurIdentifier = a})

-- | The native app package for OTA installation.
ircaurOtaApp :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurOtaApp
  = lens _ircaurOtaApp (\ s a -> s{_ircaurOtaApp = a})

-- | The developer\'s consumer key for OpenId OAuth Extension
ircaurOauthConsumerKey :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurOauthConsumerKey
  = lens _ircaurOauthConsumerKey
      (\ s a -> s{_ircaurOauthConsumerKey = a})

-- | The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for
-- Android, BUNDLE_ID for iOS.
ircaurAppId :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurAppId
  = lens _ircaurAppId (\ s a -> s{_ircaurAppId = a})

-- | The URI to which the IDP redirects the user after the federated login
-- flow.
ircaurContinueUri :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurContinueUri
  = lens _ircaurContinueUri
      (\ s a -> s{_ircaurContinueUri = a})

-- | Additional oauth scopes, beyond the basid user profile, that the user
-- would be prompted to grant
ircaurOauthScope :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurOauthScope
  = lens _ircaurOauthScope
      (\ s a -> s{_ircaurOauthScope = a})

-- | Optional realm for OpenID protocol. The sub string
-- \"scheme:\/\/domain:port\" of the param \"continueUri\" is used if this
-- is not set.
ircaurOpenidRealm :: Lens' IdentitytoolkitRelyingpartyCreateAuthUriRequest (Maybe Text)
ircaurOpenidRealm
  = lens _ircaurOpenidRealm
      (\ s a -> s{_ircaurOpenidRealm = a})

instance FromJSON
         IdentitytoolkitRelyingpartyCreateAuthUriRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyCreateAuthUriRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartyCreateAuthUriRequest <$>
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
         IdentitytoolkitRelyingpartyCreateAuthUriRequest where
        toJSON
          IdentitytoolkitRelyingpartyCreateAuthUriRequest{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _ircaurProviderId,
                  ("clientId" .=) <$> _ircaurClientId,
                  ("context" .=) <$> _ircaurContext,
                  ("identifier" .=) <$> _ircaurIdentifier,
                  ("otaApp" .=) <$> _ircaurOtaApp,
                  ("oauthConsumerKey" .=) <$> _ircaurOauthConsumerKey,
                  ("appId" .=) <$> _ircaurAppId,
                  ("continueUri" .=) <$> _ircaurContinueUri,
                  ("oauthScope" .=) <$> _ircaurOauthScope,
                  ("openidRealm" .=) <$> _ircaurOpenidRealm])

-- | Request to delete account.
--
-- /See:/ 'identitytoolkitRelyingpartyDeleteAccountRequest' smart constructor.
newtype IdentitytoolkitRelyingpartyDeleteAccountRequest = IdentitytoolkitRelyingpartyDeleteAccountRequest
    { _irdarLocalId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyDeleteAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irdarLocalId'
identitytoolkitRelyingpartyDeleteAccountRequest
    :: IdentitytoolkitRelyingpartyDeleteAccountRequest
identitytoolkitRelyingpartyDeleteAccountRequest =
    IdentitytoolkitRelyingpartyDeleteAccountRequest
    { _irdarLocalId = Nothing
    }

-- | The local ID of the user.
irdarLocalId :: Lens' IdentitytoolkitRelyingpartyDeleteAccountRequest (Maybe Text)
irdarLocalId
  = lens _irdarLocalId (\ s a -> s{_irdarLocalId = a})

instance FromJSON
         IdentitytoolkitRelyingpartyDeleteAccountRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyDeleteAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartyDeleteAccountRequest <$>
                   (o .:? "localId"))

instance ToJSON
         IdentitytoolkitRelyingpartyDeleteAccountRequest where
        toJSON
          IdentitytoolkitRelyingpartyDeleteAccountRequest{..}
          = object
              (catMaybes [("localId" .=) <$> _irdarLocalId])

-- | Request to download user account in batch.
--
-- /See:/ 'identitytoolkitRelyingpartyDownloadAccountRequest' smart constructor.
data IdentitytoolkitRelyingpartyDownloadAccountRequest = IdentitytoolkitRelyingpartyDownloadAccountRequest
    { _irdarNextPageToken :: !(Maybe Text)
    , _irdarMaxResults    :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyDownloadAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irdarNextPageToken'
--
-- * 'irdarMaxResults'
identitytoolkitRelyingpartyDownloadAccountRequest
    :: IdentitytoolkitRelyingpartyDownloadAccountRequest
identitytoolkitRelyingpartyDownloadAccountRequest =
    IdentitytoolkitRelyingpartyDownloadAccountRequest
    { _irdarNextPageToken = Nothing
    , _irdarMaxResults = Nothing
    }

-- | The token for the next page. This should be taken from the previous
-- response.
irdarNextPageToken :: Lens' IdentitytoolkitRelyingpartyDownloadAccountRequest (Maybe Text)
irdarNextPageToken
  = lens _irdarNextPageToken
      (\ s a -> s{_irdarNextPageToken = a})

-- | The max number of results to return in the response.
irdarMaxResults :: Lens' IdentitytoolkitRelyingpartyDownloadAccountRequest (Maybe Word32)
irdarMaxResults
  = lens _irdarMaxResults
      (\ s a -> s{_irdarMaxResults = a})

instance FromJSON
         IdentitytoolkitRelyingpartyDownloadAccountRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyDownloadAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartyDownloadAccountRequest <$>
                   (o .:? "nextPageToken") <*> (o .:? "maxResults"))

instance ToJSON
         IdentitytoolkitRelyingpartyDownloadAccountRequest
         where
        toJSON
          IdentitytoolkitRelyingpartyDownloadAccountRequest{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _irdarNextPageToken,
                  ("maxResults" .=) <$> _irdarMaxResults])

-- | Request to get the account information.
--
-- /See:/ 'identitytoolkitRelyingpartyGetAccountInfoRequest' smart constructor.
data IdentitytoolkitRelyingpartyGetAccountInfoRequest = IdentitytoolkitRelyingpartyGetAccountInfoRequest
    { _irgairEmail   :: !(Maybe [Text])
    , _irgairLocalId :: !(Maybe [Text])
    , _irgairIdToken :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyGetAccountInfoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irgairEmail'
--
-- * 'irgairLocalId'
--
-- * 'irgairIdToken'
identitytoolkitRelyingpartyGetAccountInfoRequest
    :: IdentitytoolkitRelyingpartyGetAccountInfoRequest
identitytoolkitRelyingpartyGetAccountInfoRequest =
    IdentitytoolkitRelyingpartyGetAccountInfoRequest
    { _irgairEmail = Nothing
    , _irgairLocalId = Nothing
    , _irgairIdToken = Nothing
    }

-- | The list of emails of the users to inquiry.
irgairEmail :: Lens' IdentitytoolkitRelyingpartyGetAccountInfoRequest [Text]
irgairEmail
  = lens _irgairEmail (\ s a -> s{_irgairEmail = a}) .
      _Default
      . _Coerce

-- | The list of local ID\'s of the users to inquiry.
irgairLocalId :: Lens' IdentitytoolkitRelyingpartyGetAccountInfoRequest [Text]
irgairLocalId
  = lens _irgairLocalId
      (\ s a -> s{_irgairLocalId = a})
      . _Default
      . _Coerce

-- | The GITKit token of the authenticated user.
irgairIdToken :: Lens' IdentitytoolkitRelyingpartyGetAccountInfoRequest (Maybe Text)
irgairIdToken
  = lens _irgairIdToken
      (\ s a -> s{_irgairIdToken = a})

instance FromJSON
         IdentitytoolkitRelyingpartyGetAccountInfoRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyGetAccountInfoRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartyGetAccountInfoRequest <$>
                   (o .:? "email" .!= mempty) <*>
                     (o .:? "localId" .!= mempty)
                     <*> (o .:? "idToken"))

instance ToJSON
         IdentitytoolkitRelyingpartyGetAccountInfoRequest
         where
        toJSON
          IdentitytoolkitRelyingpartyGetAccountInfoRequest{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irgairEmail,
                  ("localId" .=) <$> _irgairLocalId,
                  ("idToken" .=) <$> _irgairIdToken])

-- | Respone of getting public keys.
--
-- /See:/ 'identitytoolkitRelyingpartyGetPublicKeysResponse' smart constructor.
data IdentitytoolkitRelyingpartyGetPublicKeysResponse =
    IdentitytoolkitRelyingpartyGetPublicKeysResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyGetPublicKeysResponse' with the minimum fields required to make a request.
--
identitytoolkitRelyingpartyGetPublicKeysResponse
    :: IdentitytoolkitRelyingpartyGetPublicKeysResponse
identitytoolkitRelyingpartyGetPublicKeysResponse =
    IdentitytoolkitRelyingpartyGetPublicKeysResponse

instance FromJSON
         IdentitytoolkitRelyingpartyGetPublicKeysResponse
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyGetPublicKeysResponse"
              (\ o ->
                 pure
                   IdentitytoolkitRelyingpartyGetPublicKeysResponse)

instance ToJSON
         IdentitytoolkitRelyingpartyGetPublicKeysResponse
         where
        toJSON = const (Object mempty)

-- | Request to reset the password.
--
-- /See:/ 'identitytoolkitRelyingpartyResetPasswordRequest' smart constructor.
data IdentitytoolkitRelyingpartyResetPasswordRequest = IdentitytoolkitRelyingpartyResetPasswordRequest
    { _irrprEmail       :: !(Maybe Text)
    , _irrprNewPassword :: !(Maybe Text)
    , _irrprOobCode     :: !(Maybe Text)
    , _irrprOldPassword :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyResetPasswordRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irrprEmail'
--
-- * 'irrprNewPassword'
--
-- * 'irrprOobCode'
--
-- * 'irrprOldPassword'
identitytoolkitRelyingpartyResetPasswordRequest
    :: IdentitytoolkitRelyingpartyResetPasswordRequest
identitytoolkitRelyingpartyResetPasswordRequest =
    IdentitytoolkitRelyingpartyResetPasswordRequest
    { _irrprEmail = Nothing
    , _irrprNewPassword = Nothing
    , _irrprOobCode = Nothing
    , _irrprOldPassword = Nothing
    }

-- | The email address of the user.
irrprEmail :: Lens' IdentitytoolkitRelyingpartyResetPasswordRequest (Maybe Text)
irrprEmail
  = lens _irrprEmail (\ s a -> s{_irrprEmail = a})

-- | The new password inputted by the user.
irrprNewPassword :: Lens' IdentitytoolkitRelyingpartyResetPasswordRequest (Maybe Text)
irrprNewPassword
  = lens _irrprNewPassword
      (\ s a -> s{_irrprNewPassword = a})

-- | The confirmation code.
irrprOobCode :: Lens' IdentitytoolkitRelyingpartyResetPasswordRequest (Maybe Text)
irrprOobCode
  = lens _irrprOobCode (\ s a -> s{_irrprOobCode = a})

-- | The old password inputted by the user.
irrprOldPassword :: Lens' IdentitytoolkitRelyingpartyResetPasswordRequest (Maybe Text)
irrprOldPassword
  = lens _irrprOldPassword
      (\ s a -> s{_irrprOldPassword = a})

instance FromJSON
         IdentitytoolkitRelyingpartyResetPasswordRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyResetPasswordRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartyResetPasswordRequest <$>
                   (o .:? "email") <*> (o .:? "newPassword") <*>
                     (o .:? "oobCode")
                     <*> (o .:? "oldPassword"))

instance ToJSON
         IdentitytoolkitRelyingpartyResetPasswordRequest where
        toJSON
          IdentitytoolkitRelyingpartyResetPasswordRequest{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irrprEmail,
                  ("newPassword" .=) <$> _irrprNewPassword,
                  ("oobCode" .=) <$> _irrprOobCode,
                  ("oldPassword" .=) <$> _irrprOldPassword])

-- | Request to set the account information.
--
-- /See:/ 'identitytoolkitRelyingpartySetAccountInfoRequest' smart constructor.
data IdentitytoolkitRelyingpartySetAccountInfoRequest = IdentitytoolkitRelyingpartySetAccountInfoRequest
    { _irsairUpgradeToFederatedLogin :: !(Maybe Bool)
    , _irsairEmail                   :: !(Maybe Text)
    , _irsairCaptchaChallenge        :: !(Maybe Text)
    , _irsairValidSince              :: !(Maybe Int64)
    , _irsairOobCode                 :: !(Maybe Text)
    , _irsairPassword                :: !(Maybe Text)
    , _irsairCaptchaResponse         :: !(Maybe Text)
    , _irsairEmailVerified           :: !(Maybe Bool)
    , _irsairDisplayName             :: !(Maybe Text)
    , _irsairDisableUser             :: !(Maybe Bool)
    , _irsairLocalId                 :: !(Maybe Text)
    , _irsairIdToken                 :: !(Maybe Text)
    , _irsairProvider                :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartySetAccountInfoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irsairUpgradeToFederatedLogin'
--
-- * 'irsairEmail'
--
-- * 'irsairCaptchaChallenge'
--
-- * 'irsairValidSince'
--
-- * 'irsairOobCode'
--
-- * 'irsairPassword'
--
-- * 'irsairCaptchaResponse'
--
-- * 'irsairEmailVerified'
--
-- * 'irsairDisplayName'
--
-- * 'irsairDisableUser'
--
-- * 'irsairLocalId'
--
-- * 'irsairIdToken'
--
-- * 'irsairProvider'
identitytoolkitRelyingpartySetAccountInfoRequest
    :: IdentitytoolkitRelyingpartySetAccountInfoRequest
identitytoolkitRelyingpartySetAccountInfoRequest =
    IdentitytoolkitRelyingpartySetAccountInfoRequest
    { _irsairUpgradeToFederatedLogin = Nothing
    , _irsairEmail = Nothing
    , _irsairCaptchaChallenge = Nothing
    , _irsairValidSince = Nothing
    , _irsairOobCode = Nothing
    , _irsairPassword = Nothing
    , _irsairCaptchaResponse = Nothing
    , _irsairEmailVerified = Nothing
    , _irsairDisplayName = Nothing
    , _irsairDisableUser = Nothing
    , _irsairLocalId = Nothing
    , _irsairIdToken = Nothing
    , _irsairProvider = Nothing
    }

-- | Mark the user to upgrade to federated login.
irsairUpgradeToFederatedLogin :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Bool)
irsairUpgradeToFederatedLogin
  = lens _irsairUpgradeToFederatedLogin
      (\ s a -> s{_irsairUpgradeToFederatedLogin = a})

-- | The email of the user.
irsairEmail :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Text)
irsairEmail
  = lens _irsairEmail (\ s a -> s{_irsairEmail = a})

-- | The captcha challenge.
irsairCaptchaChallenge :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Text)
irsairCaptchaChallenge
  = lens _irsairCaptchaChallenge
      (\ s a -> s{_irsairCaptchaChallenge = a})

-- | Timestamp in seconds for valid login token.
irsairValidSince :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Int64)
irsairValidSince
  = lens _irsairValidSince
      (\ s a -> s{_irsairValidSince = a})

-- | The out-of-band code of the change email request.
irsairOobCode :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Text)
irsairOobCode
  = lens _irsairOobCode
      (\ s a -> s{_irsairOobCode = a})

-- | The new password of the user.
irsairPassword :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Text)
irsairPassword
  = lens _irsairPassword
      (\ s a -> s{_irsairPassword = a})

-- | Response to the captcha.
irsairCaptchaResponse :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Text)
irsairCaptchaResponse
  = lens _irsairCaptchaResponse
      (\ s a -> s{_irsairCaptchaResponse = a})

-- | Mark the email as verified or not.
irsairEmailVerified :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Bool)
irsairEmailVerified
  = lens _irsairEmailVerified
      (\ s a -> s{_irsairEmailVerified = a})

-- | The name of the user.
irsairDisplayName :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Text)
irsairDisplayName
  = lens _irsairDisplayName
      (\ s a -> s{_irsairDisplayName = a})

-- | Whether to disable the user.
irsairDisableUser :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Bool)
irsairDisableUser
  = lens _irsairDisableUser
      (\ s a -> s{_irsairDisableUser = a})

-- | The local ID of the user.
irsairLocalId :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Text)
irsairLocalId
  = lens _irsairLocalId
      (\ s a -> s{_irsairLocalId = a})

-- | The GITKit token of the authenticated user.
irsairIdToken :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest (Maybe Text)
irsairIdToken
  = lens _irsairIdToken
      (\ s a -> s{_irsairIdToken = a})

-- | The associated IDPs of the user.
irsairProvider :: Lens' IdentitytoolkitRelyingpartySetAccountInfoRequest [Text]
irsairProvider
  = lens _irsairProvider
      (\ s a -> s{_irsairProvider = a})
      . _Default
      . _Coerce

instance FromJSON
         IdentitytoolkitRelyingpartySetAccountInfoRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartySetAccountInfoRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartySetAccountInfoRequest <$>
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
         IdentitytoolkitRelyingpartySetAccountInfoRequest
         where
        toJSON
          IdentitytoolkitRelyingpartySetAccountInfoRequest{..}
          = object
              (catMaybes
                 [("upgradeToFederatedLogin" .=) <$>
                    _irsairUpgradeToFederatedLogin,
                  ("email" .=) <$> _irsairEmail,
                  ("captchaChallenge" .=) <$> _irsairCaptchaChallenge,
                  ("validSince" .=) <$> _irsairValidSince,
                  ("oobCode" .=) <$> _irsairOobCode,
                  ("password" .=) <$> _irsairPassword,
                  ("captchaResponse" .=) <$> _irsairCaptchaResponse,
                  ("emailVerified" .=) <$> _irsairEmailVerified,
                  ("displayName" .=) <$> _irsairDisplayName,
                  ("disableUser" .=) <$> _irsairDisableUser,
                  ("localId" .=) <$> _irsairLocalId,
                  ("idToken" .=) <$> _irsairIdToken,
                  ("provider" .=) <$> _irsairProvider])

-- | Request to upload user account in batch.
--
-- /See:/ 'identitytoolkitRelyingpartyUploadAccountRequest' smart constructor.
data IdentitytoolkitRelyingpartyUploadAccountRequest = IdentitytoolkitRelyingpartyUploadAccountRequest
    { _iruarUsers         :: !(Maybe [Maybe UserInfo])
    , _iruarMemoryCost    :: !(Maybe Int32)
    , _iruarSaltSeparator :: !(Maybe Word8)
    , _iruarHashAlgorithm :: !(Maybe Text)
    , _iruarSignerKey     :: !(Maybe Word8)
    , _iruarRounds        :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyUploadAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iruarUsers'
--
-- * 'iruarMemoryCost'
--
-- * 'iruarSaltSeparator'
--
-- * 'iruarHashAlgorithm'
--
-- * 'iruarSignerKey'
--
-- * 'iruarRounds'
identitytoolkitRelyingpartyUploadAccountRequest
    :: IdentitytoolkitRelyingpartyUploadAccountRequest
identitytoolkitRelyingpartyUploadAccountRequest =
    IdentitytoolkitRelyingpartyUploadAccountRequest
    { _iruarUsers = Nothing
    , _iruarMemoryCost = Nothing
    , _iruarSaltSeparator = Nothing
    , _iruarHashAlgorithm = Nothing
    , _iruarSignerKey = Nothing
    , _iruarRounds = Nothing
    }

-- | The account info to be stored.
iruarUsers :: Lens' IdentitytoolkitRelyingpartyUploadAccountRequest [Maybe UserInfo]
iruarUsers
  = lens _iruarUsers (\ s a -> s{_iruarUsers = a}) .
      _Default
      . _Coerce

-- | Memory cost for hash calculation. Used by scrypt similar algorithms.
iruarMemoryCost :: Lens' IdentitytoolkitRelyingpartyUploadAccountRequest (Maybe Int32)
iruarMemoryCost
  = lens _iruarMemoryCost
      (\ s a -> s{_iruarMemoryCost = a})

-- | The salt separator.
iruarSaltSeparator :: Lens' IdentitytoolkitRelyingpartyUploadAccountRequest (Maybe Word8)
iruarSaltSeparator
  = lens _iruarSaltSeparator
      (\ s a -> s{_iruarSaltSeparator = a})

-- | The password hash algorithm.
iruarHashAlgorithm :: Lens' IdentitytoolkitRelyingpartyUploadAccountRequest (Maybe Text)
iruarHashAlgorithm
  = lens _iruarHashAlgorithm
      (\ s a -> s{_iruarHashAlgorithm = a})

-- | The key for to hash the password.
iruarSignerKey :: Lens' IdentitytoolkitRelyingpartyUploadAccountRequest (Maybe Word8)
iruarSignerKey
  = lens _iruarSignerKey
      (\ s a -> s{_iruarSignerKey = a})

-- | Rounds for hash calculation. Used by scrypt and similar algorithms.
iruarRounds :: Lens' IdentitytoolkitRelyingpartyUploadAccountRequest (Maybe Int32)
iruarRounds
  = lens _iruarRounds (\ s a -> s{_iruarRounds = a})

instance FromJSON
         IdentitytoolkitRelyingpartyUploadAccountRequest where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyUploadAccountRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartyUploadAccountRequest <$>
                   (o .:? "users" .!= mempty) <*> (o .:? "memoryCost")
                     <*> (o .:? "saltSeparator")
                     <*> (o .:? "hashAlgorithm")
                     <*> (o .:? "signerKey")
                     <*> (o .:? "rounds"))

instance ToJSON
         IdentitytoolkitRelyingpartyUploadAccountRequest where
        toJSON
          IdentitytoolkitRelyingpartyUploadAccountRequest{..}
          = object
              (catMaybes
                 [("users" .=) <$> _iruarUsers,
                  ("memoryCost" .=) <$> _iruarMemoryCost,
                  ("saltSeparator" .=) <$> _iruarSaltSeparator,
                  ("hashAlgorithm" .=) <$> _iruarHashAlgorithm,
                  ("signerKey" .=) <$> _iruarSignerKey,
                  ("rounds" .=) <$> _iruarRounds])

-- | Request to verify the IDP assertion.
--
-- /See:/ 'identitytoolkitRelyingpartyVerifyAssertionRequest' smart constructor.
data IdentitytoolkitRelyingpartyVerifyAssertionRequest = IdentitytoolkitRelyingpartyVerifyAssertionRequest
    { _irvarPostBody           :: !(Maybe Text)
    , _irvarReturnRefreshToken :: !(Maybe Bool)
    , _irvarRequestUri         :: !(Maybe Text)
    , _irvarPendingIdToken     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyVerifyAssertionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irvarPostBody'
--
-- * 'irvarReturnRefreshToken'
--
-- * 'irvarRequestUri'
--
-- * 'irvarPendingIdToken'
identitytoolkitRelyingpartyVerifyAssertionRequest
    :: IdentitytoolkitRelyingpartyVerifyAssertionRequest
identitytoolkitRelyingpartyVerifyAssertionRequest =
    IdentitytoolkitRelyingpartyVerifyAssertionRequest
    { _irvarPostBody = Nothing
    , _irvarReturnRefreshToken = Nothing
    , _irvarRequestUri = Nothing
    , _irvarPendingIdToken = Nothing
    }

-- | The post body if the request is a HTTP POST.
irvarPostBody :: Lens' IdentitytoolkitRelyingpartyVerifyAssertionRequest (Maybe Text)
irvarPostBody
  = lens _irvarPostBody
      (\ s a -> s{_irvarPostBody = a})

-- | Whether to return refresh tokens.
irvarReturnRefreshToken :: Lens' IdentitytoolkitRelyingpartyVerifyAssertionRequest (Maybe Bool)
irvarReturnRefreshToken
  = lens _irvarReturnRefreshToken
      (\ s a -> s{_irvarReturnRefreshToken = a})

-- | The URI to which the IDP redirects the user back. It may contain
-- federated login result params added by the IDP.
irvarRequestUri :: Lens' IdentitytoolkitRelyingpartyVerifyAssertionRequest (Maybe Text)
irvarRequestUri
  = lens _irvarRequestUri
      (\ s a -> s{_irvarRequestUri = a})

-- | The GITKit token for the non-trusted IDP pending to be confirmed by the
-- user.
irvarPendingIdToken :: Lens' IdentitytoolkitRelyingpartyVerifyAssertionRequest (Maybe Text)
irvarPendingIdToken
  = lens _irvarPendingIdToken
      (\ s a -> s{_irvarPendingIdToken = a})

instance FromJSON
         IdentitytoolkitRelyingpartyVerifyAssertionRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyVerifyAssertionRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartyVerifyAssertionRequest <$>
                   (o .:? "postBody") <*> (o .:? "returnRefreshToken")
                     <*> (o .:? "requestUri")
                     <*> (o .:? "pendingIdToken"))

instance ToJSON
         IdentitytoolkitRelyingpartyVerifyAssertionRequest
         where
        toJSON
          IdentitytoolkitRelyingpartyVerifyAssertionRequest{..}
          = object
              (catMaybes
                 [("postBody" .=) <$> _irvarPostBody,
                  ("returnRefreshToken" .=) <$>
                    _irvarReturnRefreshToken,
                  ("requestUri" .=) <$> _irvarRequestUri,
                  ("pendingIdToken" .=) <$> _irvarPendingIdToken])

-- | Request to verify the password.
--
-- /See:/ 'identitytoolkitRelyingpartyVerifyPasswordRequest' smart constructor.
data IdentitytoolkitRelyingpartyVerifyPasswordRequest = IdentitytoolkitRelyingpartyVerifyPasswordRequest
    { _irvprEmail            :: !(Maybe Text)
    , _irvprCaptchaChallenge :: !(Maybe Text)
    , _irvprPassword         :: !(Maybe Text)
    , _irvprCaptchaResponse  :: !(Maybe Text)
    , _irvprPendingIdToken   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentitytoolkitRelyingpartyVerifyPasswordRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irvprEmail'
--
-- * 'irvprCaptchaChallenge'
--
-- * 'irvprPassword'
--
-- * 'irvprCaptchaResponse'
--
-- * 'irvprPendingIdToken'
identitytoolkitRelyingpartyVerifyPasswordRequest
    :: IdentitytoolkitRelyingpartyVerifyPasswordRequest
identitytoolkitRelyingpartyVerifyPasswordRequest =
    IdentitytoolkitRelyingpartyVerifyPasswordRequest
    { _irvprEmail = Nothing
    , _irvprCaptchaChallenge = Nothing
    , _irvprPassword = Nothing
    , _irvprCaptchaResponse = Nothing
    , _irvprPendingIdToken = Nothing
    }

-- | The email of the user.
irvprEmail :: Lens' IdentitytoolkitRelyingpartyVerifyPasswordRequest (Maybe Text)
irvprEmail
  = lens _irvprEmail (\ s a -> s{_irvprEmail = a})

-- | The captcha challenge.
irvprCaptchaChallenge :: Lens' IdentitytoolkitRelyingpartyVerifyPasswordRequest (Maybe Text)
irvprCaptchaChallenge
  = lens _irvprCaptchaChallenge
      (\ s a -> s{_irvprCaptchaChallenge = a})

-- | The password inputed by the user.
irvprPassword :: Lens' IdentitytoolkitRelyingpartyVerifyPasswordRequest (Maybe Text)
irvprPassword
  = lens _irvprPassword
      (\ s a -> s{_irvprPassword = a})

-- | Response to the captcha.
irvprCaptchaResponse :: Lens' IdentitytoolkitRelyingpartyVerifyPasswordRequest (Maybe Text)
irvprCaptchaResponse
  = lens _irvprCaptchaResponse
      (\ s a -> s{_irvprCaptchaResponse = a})

-- | The GITKit token for the non-trusted IDP, which is to be confirmed by
-- the user.
irvprPendingIdToken :: Lens' IdentitytoolkitRelyingpartyVerifyPasswordRequest (Maybe Text)
irvprPendingIdToken
  = lens _irvprPendingIdToken
      (\ s a -> s{_irvprPendingIdToken = a})

instance FromJSON
         IdentitytoolkitRelyingpartyVerifyPasswordRequest
         where
        parseJSON
          = withObject
              "IdentitytoolkitRelyingpartyVerifyPasswordRequest"
              (\ o ->
                 IdentitytoolkitRelyingpartyVerifyPasswordRequest <$>
                   (o .:? "email") <*> (o .:? "captchaChallenge") <*>
                     (o .:? "password")
                     <*> (o .:? "captchaResponse")
                     <*> (o .:? "pendingIdToken"))

instance ToJSON
         IdentitytoolkitRelyingpartyVerifyPasswordRequest
         where
        toJSON
          IdentitytoolkitRelyingpartyVerifyPasswordRequest{..}
          = object
              (catMaybes
                 [("email" .=) <$> _irvprEmail,
                  ("captchaChallenge" .=) <$> _irvprCaptchaChallenge,
                  ("password" .=) <$> _irvprPassword,
                  ("captchaResponse" .=) <$> _irvprCaptchaResponse,
                  ("pendingIdToken" .=) <$> _irvprPendingIdToken])

-- | Request of getting a code for user confirmation (reset password, change
-- email etc.)
--
-- /See:/ 'relyingparty' smart constructor.
data Relyingparty = Relyingparty
    { _rEmail       :: !(Maybe Text)
    , _rKind        :: !Text
    , _rUserIp      :: !(Maybe Text)
    , _rRequestType :: !(Maybe Text)
    , _rCaptchaResp :: !(Maybe Text)
    , _rNewEmail    :: !(Maybe Text)
    , _rChallenge   :: !(Maybe Text)
    , _rIdToken     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Relyingparty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEmail'
--
-- * 'rKind'
--
-- * 'rUserIp'
--
-- * 'rRequestType'
--
-- * 'rCaptchaResp'
--
-- * 'rNewEmail'
--
-- * 'rChallenge'
--
-- * 'rIdToken'
relyingparty
    :: Relyingparty
relyingparty =
    Relyingparty
    { _rEmail = Nothing
    , _rKind = "identitytoolkit#relyingparty"
    , _rUserIp = Nothing
    , _rRequestType = Nothing
    , _rCaptchaResp = Nothing
    , _rNewEmail = Nothing
    , _rChallenge = Nothing
    , _rIdToken = Nothing
    }

-- | The email of the user.
rEmail :: Lens' Relyingparty (Maybe Text)
rEmail = lens _rEmail (\ s a -> s{_rEmail = a})

-- | The fixed string \"identitytoolkit#relyingparty\".
rKind :: Lens' Relyingparty Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | The IP address of the user.
rUserIp :: Lens' Relyingparty (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | The request type.
rRequestType :: Lens' Relyingparty (Maybe Text)
rRequestType
  = lens _rRequestType (\ s a -> s{_rRequestType = a})

-- | The recaptcha response from the user.
rCaptchaResp :: Lens' Relyingparty (Maybe Text)
rCaptchaResp
  = lens _rCaptchaResp (\ s a -> s{_rCaptchaResp = a})

-- | The new email if the code is for email change.
rNewEmail :: Lens' Relyingparty (Maybe Text)
rNewEmail
  = lens _rNewEmail (\ s a -> s{_rNewEmail = a})

-- | The recaptcha challenge presented to the user.
rChallenge :: Lens' Relyingparty (Maybe Text)
rChallenge
  = lens _rChallenge (\ s a -> s{_rChallenge = a})

-- | The user\'s Gitkit login token for email change.
rIdToken :: Lens' Relyingparty (Maybe Text)
rIdToken = lens _rIdToken (\ s a -> s{_rIdToken = a})

instance FromJSON Relyingparty where
        parseJSON
          = withObject "Relyingparty"
              (\ o ->
                 Relyingparty <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!= "identitytoolkit#relyingparty")
                     <*> (o .:? "userIp")
                     <*> (o .:? "requestType")
                     <*> (o .:? "captchaResp")
                     <*> (o .:? "newEmail")
                     <*> (o .:? "challenge")
                     <*> (o .:? "idToken"))

instance ToJSON Relyingparty where
        toJSON Relyingparty{..}
          = object
              (catMaybes
                 [("email" .=) <$> _rEmail, Just ("kind" .= _rKind),
                  ("userIp" .=) <$> _rUserIp,
                  ("requestType" .=) <$> _rRequestType,
                  ("captchaResp" .=) <$> _rCaptchaResp,
                  ("newEmail" .=) <$> _rNewEmail,
                  ("challenge" .=) <$> _rChallenge,
                  ("idToken" .=) <$> _rIdToken])

-- | Response of resetting the password.
--
-- /See:/ 'resetPasswordResponse' smart constructor.
data ResetPasswordResponse = ResetPasswordResponse
    { _rprEmail :: !(Maybe Text)
    , _rprKind  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Respone of setting the account information.
--
-- /See:/ 'setAccountInfoResponse' smart constructor.
data SetAccountInfoResponse = SetAccountInfoResponse
    { _sairEmail            :: !(Maybe Text)
    , _sairKind             :: !Text
    , _sairProviderUserInfo :: !(Maybe [SetAccountInfoResponseItemProviderUserInfo])
    , _sairDisplayName      :: !(Maybe Text)
    , _sairNewEmail         :: !(Maybe Text)
    , _sairIdToken          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
sairProviderUserInfo :: Lens' SetAccountInfoResponse [SetAccountInfoResponseItemProviderUserInfo]
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

--
-- /See:/ 'setAccountInfoResponseItemProviderUserInfo' smart constructor.
data SetAccountInfoResponseItemProviderUserInfo = SetAccountInfoResponseItemProviderUserInfo
    { _sairipuiProviderId  :: !(Maybe Text)
    , _sairipuiPhotoUrl    :: !(Maybe Text)
    , _sairipuiDisplayName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetAccountInfoResponseItemProviderUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sairipuiProviderId'
--
-- * 'sairipuiPhotoUrl'
--
-- * 'sairipuiDisplayName'
setAccountInfoResponseItemProviderUserInfo
    :: SetAccountInfoResponseItemProviderUserInfo
setAccountInfoResponseItemProviderUserInfo =
    SetAccountInfoResponseItemProviderUserInfo
    { _sairipuiProviderId = Nothing
    , _sairipuiPhotoUrl = Nothing
    , _sairipuiDisplayName = Nothing
    }

-- | The IdP ID. For whitelisted IdPs it\'s a short domain name, e.g.,
-- google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s
-- the OP identifier.
sairipuiProviderId :: Lens' SetAccountInfoResponseItemProviderUserInfo (Maybe Text)
sairipuiProviderId
  = lens _sairipuiProviderId
      (\ s a -> s{_sairipuiProviderId = a})

-- | The user\'s photo url at the IDP.
sairipuiPhotoUrl :: Lens' SetAccountInfoResponseItemProviderUserInfo (Maybe Text)
sairipuiPhotoUrl
  = lens _sairipuiPhotoUrl
      (\ s a -> s{_sairipuiPhotoUrl = a})

-- | The user\'s display name at the IDP.
sairipuiDisplayName :: Lens' SetAccountInfoResponseItemProviderUserInfo (Maybe Text)
sairipuiDisplayName
  = lens _sairipuiDisplayName
      (\ s a -> s{_sairipuiDisplayName = a})

instance FromJSON
         SetAccountInfoResponseItemProviderUserInfo where
        parseJSON
          = withObject
              "SetAccountInfoResponseItemProviderUserInfo"
              (\ o ->
                 SetAccountInfoResponseItemProviderUserInfo <$>
                   (o .:? "providerId") <*> (o .:? "photoUrl") <*>
                     (o .:? "displayName"))

instance ToJSON
         SetAccountInfoResponseItemProviderUserInfo where
        toJSON SetAccountInfoResponseItemProviderUserInfo{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _sairipuiProviderId,
                  ("photoUrl" .=) <$> _sairipuiPhotoUrl,
                  ("displayName" .=) <$> _sairipuiDisplayName])

-- | Respone of uploading accounts in batch.
--
-- /See:/ 'uploadAccountResponse' smart constructor.
data UploadAccountResponse = UploadAccountResponse
    { _uarKind  :: !Text
    , _uarError :: !(Maybe [UploadAccountResponseItemError])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
uarError :: Lens' UploadAccountResponse [UploadAccountResponseItemError]
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

--
-- /See:/ 'uploadAccountResponseItemError' smart constructor.
data UploadAccountResponseItemError = UploadAccountResponseItemError
    { _uarieMessage :: !(Maybe Text)
    , _uarieIndex   :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UploadAccountResponseItemError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarieMessage'
--
-- * 'uarieIndex'
uploadAccountResponseItemError
    :: UploadAccountResponseItemError
uploadAccountResponseItemError =
    UploadAccountResponseItemError
    { _uarieMessage = Nothing
    , _uarieIndex = Nothing
    }

-- | Detailed error message for the account info.
uarieMessage :: Lens' UploadAccountResponseItemError (Maybe Text)
uarieMessage
  = lens _uarieMessage (\ s a -> s{_uarieMessage = a})

-- | The index of the malformed account, starting from 0.
uarieIndex :: Lens' UploadAccountResponseItemError (Maybe Int32)
uarieIndex
  = lens _uarieIndex (\ s a -> s{_uarieIndex = a})

instance FromJSON UploadAccountResponseItemError
         where
        parseJSON
          = withObject "UploadAccountResponseItemError"
              (\ o ->
                 UploadAccountResponseItemError <$>
                   (o .:? "message") <*> (o .:? "index"))

instance ToJSON UploadAccountResponseItemError where
        toJSON UploadAccountResponseItemError{..}
          = object
              (catMaybes
                 [("message" .=) <$> _uarieMessage,
                  ("index" .=) <$> _uarieIndex])

-- | Template for an individual account info.
--
-- /See:/ 'userInfo' smart constructor.
data UserInfo = UserInfo
    { _uiEmail             :: !(Maybe Text)
    , _uiPhotoUrl          :: !(Maybe Text)
    , _uiDisabled          :: !(Maybe Bool)
    , _uiProviderUserInfo  :: !(Maybe [UserInfoItemProviderUserInfo])
    , _uiValidSince        :: !(Maybe Int64)
    , _uiPasswordUpdatedAt :: !(Maybe Double)
    , _uiVersion           :: !(Maybe Int32)
    , _uiEmailVerified     :: !(Maybe Bool)
    , _uiSalt              :: !(Maybe Word8)
    , _uiDisplayName       :: !(Maybe Text)
    , _uiPasswordHash      :: !(Maybe Word8)
    , _uiLocalId           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiEmail'
--
-- * 'uiPhotoUrl'
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
    , _uiPhotoUrl = Nothing
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
uiPhotoUrl :: Lens' UserInfo (Maybe Text)
uiPhotoUrl
  = lens _uiPhotoUrl (\ s a -> s{_uiPhotoUrl = a})

-- | Whether the user is disabled.
uiDisabled :: Lens' UserInfo (Maybe Bool)
uiDisabled
  = lens _uiDisabled (\ s a -> s{_uiDisabled = a})

-- | The IDP of the user.
uiProviderUserInfo :: Lens' UserInfo [UserInfoItemProviderUserInfo]
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
                  ("photoUrl" .=) <$> _uiPhotoUrl,
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
-- /See:/ 'userInfoItemProviderUserInfo' smart constructor.
data UserInfoItemProviderUserInfo = UserInfoItemProviderUserInfo
    { _uiipuiProviderId  :: !(Maybe Text)
    , _uiipuiPhotoUrl    :: !(Maybe Text)
    , _uiipuiFederatedId :: !(Maybe Text)
    , _uiipuiDisplayName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfoItemProviderUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiipuiProviderId'
--
-- * 'uiipuiPhotoUrl'
--
-- * 'uiipuiFederatedId'
--
-- * 'uiipuiDisplayName'
userInfoItemProviderUserInfo
    :: UserInfoItemProviderUserInfo
userInfoItemProviderUserInfo =
    UserInfoItemProviderUserInfo
    { _uiipuiProviderId = Nothing
    , _uiipuiPhotoUrl = Nothing
    , _uiipuiFederatedId = Nothing
    , _uiipuiDisplayName = Nothing
    }

-- | The IdP ID. For white listed IdPs it\'s a short domain name, e.g.,
-- google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it\'s
-- the OP identifier.
uiipuiProviderId :: Lens' UserInfoItemProviderUserInfo (Maybe Text)
uiipuiProviderId
  = lens _uiipuiProviderId
      (\ s a -> s{_uiipuiProviderId = a})

-- | The user\'s photo url at the IDP.
uiipuiPhotoUrl :: Lens' UserInfoItemProviderUserInfo (Maybe Text)
uiipuiPhotoUrl
  = lens _uiipuiPhotoUrl
      (\ s a -> s{_uiipuiPhotoUrl = a})

-- | User\'s identifier at IDP.
uiipuiFederatedId :: Lens' UserInfoItemProviderUserInfo (Maybe Text)
uiipuiFederatedId
  = lens _uiipuiFederatedId
      (\ s a -> s{_uiipuiFederatedId = a})

-- | The user\'s display name at the IDP.
uiipuiDisplayName :: Lens' UserInfoItemProviderUserInfo (Maybe Text)
uiipuiDisplayName
  = lens _uiipuiDisplayName
      (\ s a -> s{_uiipuiDisplayName = a})

instance FromJSON UserInfoItemProviderUserInfo where
        parseJSON
          = withObject "UserInfoItemProviderUserInfo"
              (\ o ->
                 UserInfoItemProviderUserInfo <$>
                   (o .:? "providerId") <*> (o .:? "photoUrl") <*>
                     (o .:? "federatedId")
                     <*> (o .:? "displayName"))

instance ToJSON UserInfoItemProviderUserInfo where
        toJSON UserInfoItemProviderUserInfo{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _uiipuiProviderId,
                  ("photoUrl" .=) <$> _uiipuiPhotoUrl,
                  ("federatedId" .=) <$> _uiipuiFederatedId,
                  ("displayName" .=) <$> _uiipuiDisplayName])

-- | Response of verifying the IDP assertion.
--
-- /See:/ 'verifyAssertionResponse' smart constructor.
data VerifyAssertionResponse = VerifyAssertionResponse
    { _varProviderId             :: !(Maybe Text)
    , _varFullName               :: !(Maybe Text)
    , _varEmail                  :: !(Maybe Text)
    , _varEmailRecycled          :: !(Maybe Bool)
    , _varPhotoUrl               :: !(Maybe Text)
    , _varVerifiedProvider       :: !(Maybe [Text])
    , _varContext                :: !(Maybe Text)
    , _varNeedConfirmation       :: !(Maybe Bool)
    , _varOriginalEmail          :: !(Maybe Text)
    , _varLastName               :: !(Maybe Text)
    , _varOauthAccessToken       :: !(Maybe Text)
    , _varDateOfBirth            :: !(Maybe Text)
    , _varKind                   :: !Text
    , _varOauthExpireIn          :: !(Maybe Int32)
    , _varAppInstallationUrl     :: !(Maybe Text)
    , _varAction                 :: !(Maybe Text)
    , _varFederatedId            :: !(Maybe Text)
    , _varAppScheme              :: !(Maybe Text)
    , _varInputEmail             :: !(Maybe Text)
    , _varEmailVerified          :: !(Maybe Bool)
    , _varLanguage               :: !(Maybe Text)
    , _varFirstName              :: !(Maybe Text)
    , _varDisplayName            :: !(Maybe Text)
    , _varOauthRequestToken      :: !(Maybe Text)
    , _varOauthScope             :: !(Maybe Text)
    , _varNickName               :: !(Maybe Text)
    , _varLocalId                :: !(Maybe Text)
    , _varTimeZone               :: !(Maybe Text)
    , _varIdToken                :: !(Maybe Text)
    , _varOauthAuthorizationCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'varPhotoUrl'
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
-- * 'varOauthAccessToken'
--
-- * 'varDateOfBirth'
--
-- * 'varKind'
--
-- * 'varOauthExpireIn'
--
-- * 'varAppInstallationUrl'
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
-- * 'varOauthRequestToken'
--
-- * 'varOauthScope'
--
-- * 'varNickName'
--
-- * 'varLocalId'
--
-- * 'varTimeZone'
--
-- * 'varIdToken'
--
-- * 'varOauthAuthorizationCode'
verifyAssertionResponse
    :: VerifyAssertionResponse
verifyAssertionResponse =
    VerifyAssertionResponse
    { _varProviderId = Nothing
    , _varFullName = Nothing
    , _varEmail = Nothing
    , _varEmailRecycled = Nothing
    , _varPhotoUrl = Nothing
    , _varVerifiedProvider = Nothing
    , _varContext = Nothing
    , _varNeedConfirmation = Nothing
    , _varOriginalEmail = Nothing
    , _varLastName = Nothing
    , _varOauthAccessToken = Nothing
    , _varDateOfBirth = Nothing
    , _varKind = "identitytoolkit#VerifyAssertionResponse"
    , _varOauthExpireIn = Nothing
    , _varAppInstallationUrl = Nothing
    , _varAction = Nothing
    , _varFederatedId = Nothing
    , _varAppScheme = Nothing
    , _varInputEmail = Nothing
    , _varEmailVerified = Nothing
    , _varLanguage = Nothing
    , _varFirstName = Nothing
    , _varDisplayName = Nothing
    , _varOauthRequestToken = Nothing
    , _varOauthScope = Nothing
    , _varNickName = Nothing
    , _varLocalId = Nothing
    , _varTimeZone = Nothing
    , _varIdToken = Nothing
    , _varOauthAuthorizationCode = Nothing
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
varPhotoUrl :: Lens' VerifyAssertionResponse (Maybe Text)
varPhotoUrl
  = lens _varPhotoUrl (\ s a -> s{_varPhotoUrl = a})

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
varOauthAccessToken :: Lens' VerifyAssertionResponse (Maybe Text)
varOauthAccessToken
  = lens _varOauthAccessToken
      (\ s a -> s{_varOauthAccessToken = a})

-- | The birth date of the IdP account.
varDateOfBirth :: Lens' VerifyAssertionResponse (Maybe Text)
varDateOfBirth
  = lens _varDateOfBirth
      (\ s a -> s{_varDateOfBirth = a})

-- | The fixed string \"identitytoolkit#VerifyAssertionResponse\".
varKind :: Lens' VerifyAssertionResponse Text
varKind = lens _varKind (\ s a -> s{_varKind = a})

-- | The lifetime in seconds of the OAuth2 access token.
varOauthExpireIn :: Lens' VerifyAssertionResponse (Maybe Int32)
varOauthExpireIn
  = lens _varOauthExpireIn
      (\ s a -> s{_varOauthExpireIn = a})

-- | URL for OTA app installation.
varAppInstallationUrl :: Lens' VerifyAssertionResponse (Maybe Text)
varAppInstallationUrl
  = lens _varAppInstallationUrl
      (\ s a -> s{_varAppInstallationUrl = a})

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
varOauthRequestToken :: Lens' VerifyAssertionResponse (Maybe Text)
varOauthRequestToken
  = lens _varOauthRequestToken
      (\ s a -> s{_varOauthRequestToken = a})

-- | The scope for the OpenID OAuth extension.
varOauthScope :: Lens' VerifyAssertionResponse (Maybe Text)
varOauthScope
  = lens _varOauthScope
      (\ s a -> s{_varOauthScope = a})

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
varOauthAuthorizationCode :: Lens' VerifyAssertionResponse (Maybe Text)
varOauthAuthorizationCode
  = lens _varOauthAuthorizationCode
      (\ s a -> s{_varOauthAuthorizationCode = a})

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
                  ("photoUrl" .=) <$> _varPhotoUrl,
                  ("verifiedProvider" .=) <$> _varVerifiedProvider,
                  ("context" .=) <$> _varContext,
                  ("needConfirmation" .=) <$> _varNeedConfirmation,
                  ("originalEmail" .=) <$> _varOriginalEmail,
                  ("lastName" .=) <$> _varLastName,
                  ("oauthAccessToken" .=) <$> _varOauthAccessToken,
                  ("dateOfBirth" .=) <$> _varDateOfBirth,
                  Just ("kind" .= _varKind),
                  ("oauthExpireIn" .=) <$> _varOauthExpireIn,
                  ("appInstallationUrl" .=) <$> _varAppInstallationUrl,
                  ("action" .=) <$> _varAction,
                  ("federatedId" .=) <$> _varFederatedId,
                  ("appScheme" .=) <$> _varAppScheme,
                  ("inputEmail" .=) <$> _varInputEmail,
                  ("emailVerified" .=) <$> _varEmailVerified,
                  ("language" .=) <$> _varLanguage,
                  ("firstName" .=) <$> _varFirstName,
                  ("displayName" .=) <$> _varDisplayName,
                  ("oauthRequestToken" .=) <$> _varOauthRequestToken,
                  ("oauthScope" .=) <$> _varOauthScope,
                  ("nickName" .=) <$> _varNickName,
                  ("localId" .=) <$> _varLocalId,
                  ("timeZone" .=) <$> _varTimeZone,
                  ("idToken" .=) <$> _varIdToken,
                  ("oauthAuthorizationCode" .=) <$>
                    _varOauthAuthorizationCode])

-- | Request of verifying the password.
--
-- /See:/ 'verifyPasswordResponse' smart constructor.
data VerifyPasswordResponse = VerifyPasswordResponse
    { _vprEmail                  :: !(Maybe Text)
    , _vprPhotoUrl               :: !(Maybe Text)
    , _vprOauthAccessToken       :: !(Maybe Text)
    , _vprKind                   :: !Text
    , _vprOauthExpireIn          :: !(Maybe Int32)
    , _vprDisplayName            :: !(Maybe Text)
    , _vprLocalId                :: !(Maybe Text)
    , _vprRegistered             :: !(Maybe Bool)
    , _vprIdToken                :: !(Maybe Text)
    , _vprOauthAuthorizationCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerifyPasswordResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vprEmail'
--
-- * 'vprPhotoUrl'
--
-- * 'vprOauthAccessToken'
--
-- * 'vprKind'
--
-- * 'vprOauthExpireIn'
--
-- * 'vprDisplayName'
--
-- * 'vprLocalId'
--
-- * 'vprRegistered'
--
-- * 'vprIdToken'
--
-- * 'vprOauthAuthorizationCode'
verifyPasswordResponse
    :: VerifyPasswordResponse
verifyPasswordResponse =
    VerifyPasswordResponse
    { _vprEmail = Nothing
    , _vprPhotoUrl = Nothing
    , _vprOauthAccessToken = Nothing
    , _vprKind = "identitytoolkit#VerifyPasswordResponse"
    , _vprOauthExpireIn = Nothing
    , _vprDisplayName = Nothing
    , _vprLocalId = Nothing
    , _vprRegistered = Nothing
    , _vprIdToken = Nothing
    , _vprOauthAuthorizationCode = Nothing
    }

-- | The email returned by the IdP. NOTE: The federated login user may not
-- own the email.
vprEmail :: Lens' VerifyPasswordResponse (Maybe Text)
vprEmail = lens _vprEmail (\ s a -> s{_vprEmail = a})

-- | The URI of the user\'s photo at IdP
vprPhotoUrl :: Lens' VerifyPasswordResponse (Maybe Text)
vprPhotoUrl
  = lens _vprPhotoUrl (\ s a -> s{_vprPhotoUrl = a})

-- | The OAuth2 access token.
vprOauthAccessToken :: Lens' VerifyPasswordResponse (Maybe Text)
vprOauthAccessToken
  = lens _vprOauthAccessToken
      (\ s a -> s{_vprOauthAccessToken = a})

-- | The fixed string \"identitytoolkit#VerifyPasswordResponse\".
vprKind :: Lens' VerifyPasswordResponse Text
vprKind = lens _vprKind (\ s a -> s{_vprKind = a})

-- | The lifetime in seconds of the OAuth2 access token.
vprOauthExpireIn :: Lens' VerifyPasswordResponse (Maybe Int32)
vprOauthExpireIn
  = lens _vprOauthExpireIn
      (\ s a -> s{_vprOauthExpireIn = a})

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
vprOauthAuthorizationCode :: Lens' VerifyPasswordResponse (Maybe Text)
vprOauthAuthorizationCode
  = lens _vprOauthAuthorizationCode
      (\ s a -> s{_vprOauthAuthorizationCode = a})

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
                  ("photoUrl" .=) <$> _vprPhotoUrl,
                  ("oauthAccessToken" .=) <$> _vprOauthAccessToken,
                  Just ("kind" .= _vprKind),
                  ("oauthExpireIn" .=) <$> _vprOauthExpireIn,
                  ("displayName" .=) <$> _vprDisplayName,
                  ("localId" .=) <$> _vprLocalId,
                  ("registered" .=) <$> _vprRegistered,
                  ("idToken" .=) <$> _vprIdToken,
                  ("oauthAuthorizationCode" .=) <$>
                    _vprOauthAuthorizationCode])
