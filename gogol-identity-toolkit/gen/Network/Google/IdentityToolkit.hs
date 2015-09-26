{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.IdentityToolkit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Help the third party sites to implement federated login.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference>
module Network.Google.IdentityToolkit
    (
    -- * Resources
      IdentityToolkit
    , RelyingpartyAPI
    , RelyingpartyCreateAuthUri
    , RelyingpartyUploadAccount
    , RelyingpartyResetPassword
    , RelyingpartySetAccountInfo
    , RelyingpartyVerifyAssertion
    , RelyingpartyDeleteAccount
    , RelyingpartyGetOobConfirmationCode
    , RelyingpartyGetRecaptchaParam
    , RelyingpartyDownloadAccount
    , RelyingpartyVerifyPassword
    , RelyingpartyGetPublicKeys
    , RelyingpartyGetAccountInfo

    -- * Types

    -- ** CreateAuthUriResponse
    , CreateAuthUriResponse
    , createAuthUriResponse
    , caurProviderId
    , caurKind
    , caurAuthUri
    , caurCaptchaRequired
    , caurRegistered
    , caurForExistingProvider

    -- ** DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , dKind

    -- ** DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , darNextPageToken
    , darUsers
    , darKind

    -- ** GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- ** GetOobConfirmationCodeResponse
    , GetOobConfirmationCodeResponse
    , getOobConfirmationCodeResponse
    , goccrKind
    , goccrOobCode

    -- ** GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken

    -- ** IdentitytoolkitRelyingpartyCreateAuthUriRequest
    , IdentitytoolkitRelyingpartyCreateAuthUriRequest
    , identitytoolkitRelyingpartyCreateAuthUriRequest
    , ircaurProviderId
    , ircaurClientId
    , ircaurContext
    , ircaurIdentifier
    , ircaurOtaApp
    , ircaurOauthConsumerKey
    , ircaurAppId
    , ircaurContinueUri
    , ircaurOauthScope
    , ircaurOpenidRealm

    -- ** IdentitytoolkitRelyingpartyDeleteAccountRequest
    , IdentitytoolkitRelyingpartyDeleteAccountRequest
    , identitytoolkitRelyingpartyDeleteAccountRequest
    , irdarLocalId

    -- ** IdentitytoolkitRelyingpartyDownloadAccountRequest
    , IdentitytoolkitRelyingpartyDownloadAccountRequest
    , identitytoolkitRelyingpartyDownloadAccountRequest
    , irdarNextPageToken
    , irdarMaxResults

    -- ** IdentitytoolkitRelyingpartyGetAccountInfoRequest
    , IdentitytoolkitRelyingpartyGetAccountInfoRequest
    , identitytoolkitRelyingpartyGetAccountInfoRequest
    , irgairEmail
    , irgairLocalId
    , irgairIdToken

    -- ** IdentitytoolkitRelyingpartyGetPublicKeysResponse
    , IdentitytoolkitRelyingpartyGetPublicKeysResponse
    , identitytoolkitRelyingpartyGetPublicKeysResponse

    -- ** IdentitytoolkitRelyingpartyResetPasswordRequest
    , IdentitytoolkitRelyingpartyResetPasswordRequest
    , identitytoolkitRelyingpartyResetPasswordRequest
    , irrprEmail
    , irrprNewPassword
    , irrprOobCode
    , irrprOldPassword

    -- ** IdentitytoolkitRelyingpartySetAccountInfoRequest
    , IdentitytoolkitRelyingpartySetAccountInfoRequest
    , identitytoolkitRelyingpartySetAccountInfoRequest
    , irsairUpgradeToFederatedLogin
    , irsairEmail
    , irsairCaptchaChallenge
    , irsairValidSince
    , irsairOobCode
    , irsairPassword
    , irsairCaptchaResponse
    , irsairEmailVerified
    , irsairDisplayName
    , irsairDisableUser
    , irsairLocalId
    , irsairIdToken
    , irsairProvider

    -- ** IdentitytoolkitRelyingpartyUploadAccountRequest
    , IdentitytoolkitRelyingpartyUploadAccountRequest
    , identitytoolkitRelyingpartyUploadAccountRequest
    , iruarUsers
    , iruarMemoryCost
    , iruarSaltSeparator
    , iruarHashAlgorithm
    , iruarSignerKey
    , iruarRounds

    -- ** IdentitytoolkitRelyingpartyVerifyAssertionRequest
    , IdentitytoolkitRelyingpartyVerifyAssertionRequest
    , identitytoolkitRelyingpartyVerifyAssertionRequest
    , irvarPostBody
    , irvarReturnRefreshToken
    , irvarRequestUri
    , irvarPendingIdToken

    -- ** IdentitytoolkitRelyingpartyVerifyPasswordRequest
    , IdentitytoolkitRelyingpartyVerifyPasswordRequest
    , identitytoolkitRelyingpartyVerifyPasswordRequest
    , irvprEmail
    , irvprCaptchaChallenge
    , irvprPassword
    , irvprCaptchaResponse
    , irvprPendingIdToken

    -- ** Relyingparty
    , Relyingparty
    , relyingparty
    , rEmail
    , rKind
    , rUserIp
    , rRequestType
    , rCaptchaResp
    , rNewEmail
    , rChallenge
    , rIdToken

    -- ** ResetPasswordResponse
    , ResetPasswordResponse
    , resetPasswordResponse
    , rprEmail
    , rprKind

    -- ** SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairKind
    , sairProviderUserInfo
    , sairDisplayName
    , sairNewEmail
    , sairIdToken

    -- ** SetAccountInfoResponseItemProviderUserInfo
    , SetAccountInfoResponseItemProviderUserInfo
    , setAccountInfoResponseItemProviderUserInfo
    , sairipuiProviderId
    , sairipuiPhotoUrl
    , sairipuiDisplayName

    -- ** UploadAccountResponse
    , UploadAccountResponse
    , uploadAccountResponse
    , uarKind
    , uarError

    -- ** UploadAccountResponseItemError
    , UploadAccountResponseItemError
    , uploadAccountResponseItemError
    , uarieMessage
    , uarieIndex

    -- ** UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiPhotoUrl
    , uiDisabled
    , uiProviderUserInfo
    , uiValidSince
    , uiPasswordUpdatedAt
    , uiVersion
    , uiEmailVerified
    , uiSalt
    , uiDisplayName
    , uiPasswordHash
    , uiLocalId

    -- ** UserInfoItemProviderUserInfo
    , UserInfoItemProviderUserInfo
    , userInfoItemProviderUserInfo
    , uiipuiProviderId
    , uiipuiPhotoUrl
    , uiipuiFederatedId
    , uiipuiDisplayName

    -- ** VerifyAssertionResponse
    , VerifyAssertionResponse
    , verifyAssertionResponse
    , varProviderId
    , varFullName
    , varEmail
    , varEmailRecycled
    , varPhotoUrl
    , varVerifiedProvider
    , varContext
    , varNeedConfirmation
    , varOriginalEmail
    , varLastName
    , varOauthAccessToken
    , varDateOfBirth
    , varKind
    , varOauthExpireIn
    , varAppInstallationUrl
    , varAction
    , varFederatedId
    , varAppScheme
    , varInputEmail
    , varEmailVerified
    , varLanguage
    , varFirstName
    , varDisplayName
    , varOauthRequestToken
    , varOauthScope
    , varNickName
    , varLocalId
    , varTimeZone
    , varIdToken
    , varOauthAuthorizationCode

    -- ** VerifyPasswordResponse
    , VerifyPasswordResponse
    , verifyPasswordResponse
    , vprEmail
    , vprPhotoUrl
    , vprOauthAccessToken
    , vprKind
    , vprOauthExpireIn
    , vprDisplayName
    , vprLocalId
    , vprRegistered
    , vprIdToken
    , vprOauthAuthorizationCode
    ) where

import           Network.Google.IdentityToolkit.Types

{- $resources
TODO
-}

type IdentityToolkit = RelyingpartyAPI

type RelyingpartyAPI =
     RelyingpartyUploadAccount :<|>
       RelyingpartyResetPassword :<|>
         RelyingpartySetAccountInfo :<|>
           RelyingpartyVerifyAssertion :<|>
             RelyingpartyDeleteAccount :<|>
               RelyingpartyGetOobConfirmationCode :<|>
                 RelyingpartyGetRecaptchaParam :<|>
                   RelyingpartyDownloadAccount :<|>
                     RelyingpartyVerifyPassword :<|>
                       RelyingpartyGetPublicKeys :<|>
                         RelyingpartyGetAccountInfo :<|>
                           RelyingpartyCreateAuthUri

-- | Creates the URI used by the IdP to authenticate the user.
type RelyingpartyCreateAuthUri =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "createAuthUri"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Batch upload existing user accounts.
type RelyingpartyUploadAccount =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "uploadAccount"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Reset password for a user.
type RelyingpartyResetPassword =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "resetPassword"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Set account info for a user.
type RelyingpartySetAccountInfo =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "setAccountInfo"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Verifies the assertion returned by the IdP.
type RelyingpartyVerifyAssertion =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "verifyAssertion"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete user account.
type RelyingpartyDeleteAccount =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "deleteAccount"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a code for user action confirmation.
type RelyingpartyGetOobConfirmationCode =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "getOobConfirmationCode"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get recaptcha secure param.
type RelyingpartyGetRecaptchaParam =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "getRecaptchaParam"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Batch download user accounts.
type RelyingpartyDownloadAccount =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "downloadAccount"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Verifies the user entered password.
type RelyingpartyVerifyPassword =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "verifyPassword"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get token signing public key.
type RelyingpartyGetPublicKeys =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "publicKeys"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the account info.
type RelyingpartyGetAccountInfo =
     "identitytoolkit" :> "v3" :> "relyingparty" :>
       "getAccountInfo"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
