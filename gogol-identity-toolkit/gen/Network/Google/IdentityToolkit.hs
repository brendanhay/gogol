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
-- | Help the third party sites to implement federated login.
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

    -- ** IdentitytoolkitRelyingPartyCreateAuthURI
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.CreateAuthURI

    -- ** IdentitytoolkitRelyingPartyDeleteAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.DeleteAccount

    -- ** IdentitytoolkitRelyingPartyDownloadAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.DownloadAccount

    -- ** IdentitytoolkitRelyingPartyGetAccountInfo
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetAccountInfo

    -- ** IdentitytoolkitRelyingPartyGetOOBConfirmationCode
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetOOBConfirmationCode

    -- ** IdentitytoolkitRelyingPartyGetPublicKeys
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetPublicKeys

    -- ** IdentitytoolkitRelyingPartyGetRecaptchaParam
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.GetRecaptchaParam

    -- ** IdentitytoolkitRelyingPartyResetPassword
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.ResetPassword

    -- ** IdentitytoolkitRelyingPartySetAccountInfo
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.SetAccountInfo

    -- ** IdentitytoolkitRelyingPartyUploadAccount
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.UploadAccount

    -- ** IdentitytoolkitRelyingPartyVerifyAssertion
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyAssertion

    -- ** IdentitytoolkitRelyingPartyVerifyPassword
    , module Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPassword

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

    -- ** SetAccountInfoResponseProviderUserInfoItem
    , SetAccountInfoResponseProviderUserInfoItem
    , setAccountInfoResponseProviderUserInfoItem
    , sairpuiiProviderId
    , sairpuiiPhotoURL
    , sairpuiiDisplayName

    -- ** IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , identitytoolkitRelyingPartyVerifyPasswordRequest
    , irpvprEmail
    , irpvprCaptchaChallenge
    , irpvprPassword
    , irpvprCaptchaResponse
    , irpvprPendingIdToken

    -- ** IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , identitytoolkitRelyingPartyVerifyAssertionRequest
    , irpvarPostBody
    , irpvarReturnRefreshToken
    , irpvarRequestURI
    , irpvarPendingIdToken

    -- ** IdentitytoolkitRelyingPartySetAccountInfoRequest
    , IdentitytoolkitRelyingPartySetAccountInfoRequest
    , identitytoolkitRelyingPartySetAccountInfoRequest
    , irpsairUpgradeToFederatedLogin
    , irpsairEmail
    , irpsairCaptchaChallenge
    , irpsairValidSince
    , irpsairOOBCode
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

    -- ** ProviderUserInfoItem
    , ProviderUserInfoItem
    , providerUserInfoItem
    , puiiProviderId
    , puiiPhotoURL
    , puiiFederatedId
    , puiiDisplayName

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

    -- ** RelyingParty
    , RelyingParty
    , relyingParty
    , rpEmail
    , rpKind
    , rpUserIP
    , rpRequestType
    , rpCaptchaResp
    , rpNewEmail
    , rpChallenge
    , rpIdToken

    -- ** IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , identitytoolkitRelyingPartyGetAccountInfoRequest
    , irpgairEmail
    , irpgairLocalId
    , irpgairIdToken

    -- ** IdentitytoolkitRelyingPartyGetPublicKeysResponse
    , IdentitytoolkitRelyingPartyGetPublicKeysResponse
    , identitytoolkitRelyingPartyGetPublicKeysResponse

    -- ** IdentitytoolkitRelyingPartyCreateAuthURIRequest
    , IdentitytoolkitRelyingPartyCreateAuthURIRequest
    , identitytoolkitRelyingPartyCreateAuthURIRequest
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

    -- ** IdentitytoolkitRelyingPartyUploadAccountRequest
    , IdentitytoolkitRelyingPartyUploadAccountRequest
    , identitytoolkitRelyingPartyUploadAccountRequest
    , irpuarUsers
    , irpuarMemoryCost
    , irpuarSaltSeparator
    , irpuarHashAlgorithm
    , irpuarSignerKey
    , irpuarRounds

    -- ** IdentitytoolkitRelyingPartyResetPasswordRequest
    , IdentitytoolkitRelyingPartyResetPasswordRequest
    , identitytoolkitRelyingPartyResetPasswordRequest
    , irprprEmail
    , irprprNewPassword
    , irprprOOBCode
    , irprprOldPassword

    -- ** GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- ** GetOOBConfirmationCodeResponse
    , GetOOBConfirmationCodeResponse
    , getOOBConfirmationCodeResponse
    , goobccrKind
    , goobccrOOBCode

    -- ** ErrorItem
    , ErrorItem
    , errorItem
    , eiMessage
    , eiIndex

    -- ** IdentitytoolkitRelyingPartyDeleteAccountRequest
    , IdentitytoolkitRelyingPartyDeleteAccountRequest
    , identitytoolkitRelyingPartyDeleteAccountRequest
    , irpdarLocalId

    -- ** IdentitytoolkitRelyingPartyDownloadAccountRequest
    , IdentitytoolkitRelyingPartyDownloadAccountRequest
    , identitytoolkitRelyingPartyDownloadAccountRequest
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
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude
import           Network.Google.Resource.IdentityToolkit.RelyingParty.CreateAuthURI
import           Network.Google.Resource.IdentityToolkit.RelyingParty.DeleteAccount
import           Network.Google.Resource.IdentityToolkit.RelyingParty.DownloadAccount
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetAccountInfo
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetOOBConfirmationCode
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetPublicKeys
import           Network.Google.Resource.IdentityToolkit.RelyingParty.GetRecaptchaParam
import           Network.Google.Resource.IdentityToolkit.RelyingParty.ResetPassword
import           Network.Google.Resource.IdentityToolkit.RelyingParty.SetAccountInfo
import           Network.Google.Resource.IdentityToolkit.RelyingParty.UploadAccount
import           Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyAssertion
import           Network.Google.Resource.IdentityToolkit.RelyingParty.VerifyPassword

{- $resources
TODO
-}

type IdentityToolkitAPI =
     RelyingPartyCreateAuthURIResource :<|>
       RelyingPartyUploadAccountResource
       :<|> RelyingPartyResetPasswordResource
       :<|> RelyingPartySetAccountInfoResource
       :<|> RelyingPartyVerifyAssertionResource
       :<|> RelyingPartyDeleteAccountResource
       :<|> RelyingPartyGetOOBConfirmationCodeResource
       :<|> RelyingPartyGetRecaptchaParamResource
       :<|> RelyingPartyDownloadAccountResource
       :<|> RelyingPartyVerifyPasswordResource
       :<|> RelyingPartyGetPublicKeysResource
       :<|> RelyingPartyGetAccountInfoResource

identityToolkitAPI :: Proxy IdentityToolkitAPI
identityToolkitAPI = Proxy
