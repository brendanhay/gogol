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
    -- * API
      IdentityToolkitAPI
    , identityToolkitAPI
    , identityToolkitURL

    -- * Service Methods

    -- * REST Resources

    -- ** IdentitytoolkitRelyingPartyyCreateAuthURI
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.CreateAuthURI

    -- ** IdentitytoolkitRelyingPartyyDeleteAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.DeleteAccount

    -- ** IdentitytoolkitRelyingPartyyDownloadAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.DownloadAccount

    -- ** IdentitytoolkitRelyingPartyyGetAccountInfo
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetAccountInfo

    -- ** IdentitytoolkitRelyingPartyyGetOobConfirmationCode
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetOobConfirmationCode

    -- ** IdentitytoolkitRelyingPartyyGetPublicKeys
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetPublicKeys

    -- ** IdentitytoolkitRelyingPartyyGetRecaptchaParam
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetRecaptchaParam

    -- ** IdentitytoolkitRelyingPartyyResetPassword
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.ResetPassword

    -- ** IdentitytoolkitRelyingPartyySetAccountInfo
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.SetAccountInfo

    -- ** IdentitytoolkitRelyingPartyyUploadAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.UploadAccount

    -- ** IdentitytoolkitRelyingPartyyVerifyAssertion
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.VerifyAssertion

    -- ** IdentitytoolkitRelyingPartyyVerifyPassword
    , module Network.Google.Resource.IdentityToolkit.RelyingPartyy.VerifyPassword

    -- * Types

    -- ** UserInfo
    , UserInfo
    , userInfo
    , uiEmail
    , uiPhotoURL
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

    -- ** IdentitytoolkitRelyingPartyyVerifyPasswordRequest
    , IdentitytoolkitRelyingPartyyVerifyPasswordRequest
    , identitytoolkitRelyingPartyyVerifyPasswordRequest
    , irpvprEmail
    , irpvprCaptchaChallenge
    , irpvprPassword
    , irpvprCaptchaResponse
    , irpvprPendingIdToken

    -- ** IdentitytoolkitRelyingPartyyVerifyAssertionRequest
    , IdentitytoolkitRelyingPartyyVerifyAssertionRequest
    , identitytoolkitRelyingPartyyVerifyAssertionRequest
    , irpvarPostBody
    , irpvarReturnRefreshToken
    , irpvarRequestURI
    , irpvarPendingIdToken

    -- ** IdentitytoolkitRelyingPartyySetAccountInfoRequest
    , IdentitytoolkitRelyingPartyySetAccountInfoRequest
    , identitytoolkitRelyingPartyySetAccountInfoRequest
    , irpsairUpgradeToFederatedLogin
    , irpsairEmail
    , irpsairCaptchaChallenge
    , irpsairValidSince
    , irpsairOobCode
    , irpsairPassword
    , irpsairCaptchaResponse
    , irpsairEmailVerified
    , irpsairDisplayName
    , irpsairDisableUser
    , irpsairLocalId
    , irpsairIdToken
    , irpsairProvider

    -- ** DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , darKind

    -- ** DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , dNextPageToken
    , dUsers
    , dKind

    -- ** ResetPasswordResponse
    , ResetPasswordResponse
    , resetPasswordResponse
    , rprEmail
    , rprKind

    -- ** UploadAccountResponse
    , UploadAccountResponse
    , uploadAccountResponse
    , uarKind
    , uarError

    -- ** CreateAuthURIResponse
    , CreateAuthURIResponse
    , createAuthURIResponse
    , caurProviderId
    , caurKind
    , caurAuthURI
    , caurCaptchaRequired
    , caurRegistered
    , caurForExistingProvider

    -- ** RelyingPartyy
    , RelyingPartyy
    , relyingPartyy
    , rpEmail
    , rpKind
    , rpUserIP
    , rpRequestType
    , rpCaptchaResp
    , rpNewEmail
    , rpChallenge
    , rpIdToken

    -- ** IdentitytoolkitRelyingPartyyGetAccountInfoRequest
    , IdentitytoolkitRelyingPartyyGetAccountInfoRequest
    , identitytoolkitRelyingPartyyGetAccountInfoRequest
    , irpgairEmail
    , irpgairLocalId
    , irpgairIdToken

    -- ** IdentitytoolkitRelyingPartyyGetPublicKeysResponse
    , IdentitytoolkitRelyingPartyyGetPublicKeysResponse
    , identitytoolkitRelyingPartyyGetPublicKeysResponse

    -- ** IdentitytoolkitRelyingPartyyCreateAuthURIRequest
    , IdentitytoolkitRelyingPartyyCreateAuthURIRequest
    , identitytoolkitRelyingPartyyCreateAuthURIRequest
    , irpcaurProviderId
    , irpcaurClientId
    , irpcaurContext
    , irpcaurIdentifier
    , irpcaurOtaApp
    , irpcaurOAuthConsumerKey
    , irpcaurAppId
    , irpcaurContinueURI
    , irpcaurOAuthScope
    , irpcaurOpenidRealm

    -- ** IdentitytoolkitRelyingPartyyUploadAccountRequest
    , IdentitytoolkitRelyingPartyyUploadAccountRequest
    , identitytoolkitRelyingPartyyUploadAccountRequest
    , irpuarUsers
    , irpuarMemoryCost
    , irpuarSaltSeparator
    , irpuarHashAlgorithm
    , irpuarSignerKey
    , irpuarRounds

    -- ** IdentitytoolkitRelyingPartyyResetPasswordRequest
    , IdentitytoolkitRelyingPartyyResetPasswordRequest
    , identitytoolkitRelyingPartyyResetPasswordRequest
    , irprprEmail
    , irprprNewPassword
    , irprprOobCode
    , irprprOldPassword

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

    -- ** IdentitytoolkitRelyingPartyyDeleteAccountRequest
    , IdentitytoolkitRelyingPartyyDeleteAccountRequest
    , identitytoolkitRelyingPartyyDeleteAccountRequest
    , irpdarLocalId

    -- ** SetAccountInfoResponseProviderUserInfo
    , SetAccountInfoResponseProviderUserInfo
    , setAccountInfoResponseProviderUserInfo
    , sairpuiProviderId
    , sairpuiPhotoURL
    , sairpuiDisplayName

    -- ** IdentitytoolkitRelyingPartyyDownloadAccountRequest
    , IdentitytoolkitRelyingPartyyDownloadAccountRequest
    , identitytoolkitRelyingPartyyDownloadAccountRequest
    , irpdarNextPageToken
    , irpdarMaxResults

    -- ** VerifyPasswordResponse
    , VerifyPasswordResponse
    , verifyPasswordResponse
    , vprEmail
    , vprPhotoURL
    , vprOAuthAccessToken
    , vprKind
    , vprOAuthExpireIn
    , vprDisplayName
    , vprLocalId
    , vprRegistered
    , vprIdToken
    , vprOAuthAuthorizationCode

    -- ** VerifyAssertionResponse
    , VerifyAssertionResponse
    , verifyAssertionResponse
    , varProviderId
    , varFullName
    , varEmail
    , varEmailRecycled
    , varPhotoURL
    , varVerifiedProvider
    , varContext
    , varNeedConfirmation
    , varOriginalEmail
    , varLastName
    , varOAuthAccessToken
    , varDateOfBirth
    , varKind
    , varOAuthExpireIn
    , varAppInstallationURL
    , varAction
    , varFederatedId
    , varAppScheme
    , varInputEmail
    , varEmailVerified
    , varLanguage
    , varFirstName
    , varDisplayName
    , varOAuthRequestToken
    , varOAuthScope
    , varNickName
    , varLocalId
    , varTimeZone
    , varIdToken
    , varOAuthAuthorizationCode

    -- ** SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairKind
    , sairProviderUserInfo
    , sairDisplayName
    , sairNewEmail
    , sairIdToken

    -- ** GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken

    -- ** UploadAccountResponseError
    , UploadAccountResponseError
    , uploadAccountResponseError
    , uareMessage
    , uareIndex

    -- ** UserInfoProviderUserInfo
    , UserInfoProviderUserInfo
    , userInfoProviderUserInfo
    , uipuiProviderId
    , uipuiPhotoURL
    , uipuiFederatedId
    , uipuiDisplayName
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.CreateAuthURI
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.DeleteAccount
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.DownloadAccount
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetAccountInfo
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetOobConfirmationCode
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetPublicKeys
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetRecaptchaParam
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.ResetPassword
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.SetAccountInfo
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.UploadAccount
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.VerifyAssertion
import           Network.Google.Resource.IdentityToolkit.RelyingPartyy.VerifyPassword

{- $resources
TODO
-}

type IdentityToolkitAPI =
     RelyingPartyyCreateAuthURIResource :<|>
       RelyingPartyyUploadAccountResource
       :<|> RelyingPartyyResetPasswordResource
       :<|> RelyingPartyySetAccountInfoResource
       :<|> RelyingPartyyVerifyAssertionResource
       :<|> RelyingPartyyDeleteAccountResource
       :<|> RelyingPartyyGetOobConfirmationCodeResource
       :<|> RelyingPartyyGetRecaptchaParamResource
       :<|> RelyingPartyyDownloadAccountResource
       :<|> RelyingPartyyVerifyPasswordResource
       :<|> RelyingPartyyGetPublicKeysResource
       :<|> RelyingPartyyGetAccountInfoResource

identityToolkitAPI :: Proxy IdentityToolkitAPI
identityToolkitAPI = Proxy
