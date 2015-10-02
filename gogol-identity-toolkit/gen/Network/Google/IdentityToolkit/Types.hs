{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IdentityToolkit.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IdentityToolkit.Types
    (
    -- * Service URL
      identityToolkitURL

    -- * UserInfo
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

    -- * IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , IdentitytoolkitRelyingPartyVerifyPasswordRequest
    , identitytoolkitRelyingPartyVerifyPasswordRequest
    , irpvprEmail
    , irpvprCaptchaChallenge
    , irpvprPassword
    , irpvprCaptchaResponse
    , irpvprPendingIdToken

    -- * IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , IdentitytoolkitRelyingPartyVerifyAssertionRequest
    , identitytoolkitRelyingPartyVerifyAssertionRequest
    , irpvarPostBody
    , irpvarReturnRefreshToken
    , irpvarRequestURI
    , irpvarPendingIdToken

    -- * IdentitytoolkitRelyingPartySetAccountInfoRequest
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

    -- * DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , darKind

    -- * DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , dNextPageToken
    , dUsers
    , dKind

    -- * ResetPasswordResponse
    , ResetPasswordResponse
    , resetPasswordResponse
    , rprEmail
    , rprKind

    -- * UploadAccountResponse
    , UploadAccountResponse
    , uploadAccountResponse
    , uarKind
    , uarError

    -- * CreateAuthURIResponse
    , CreateAuthURIResponse
    , createAuthURIResponse
    , caurProviderId
    , caurKind
    , caurAuthURI
    , caurCaptchaRequired
    , caurRegistered
    , caurForExistingProvider

    -- * RelyingParty
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

    -- * IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , IdentitytoolkitRelyingPartyGetAccountInfoRequest
    , identitytoolkitRelyingPartyGetAccountInfoRequest
    , irpgairEmail
    , irpgairLocalId
    , irpgairIdToken

    -- * IdentitytoolkitRelyingPartyGetPublicKeysResponse
    , IdentitytoolkitRelyingPartyGetPublicKeysResponse
    , identitytoolkitRelyingPartyGetPublicKeysResponse

    -- * IdentitytoolkitRelyingPartyCreateAuthURIRequest
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

    -- * IdentitytoolkitRelyingPartyUploadAccountRequest
    , IdentitytoolkitRelyingPartyUploadAccountRequest
    , identitytoolkitRelyingPartyUploadAccountRequest
    , irpuarUsers
    , irpuarMemoryCost
    , irpuarSaltSeparator
    , irpuarHashAlgorithm
    , irpuarSignerKey
    , irpuarRounds

    -- * IdentitytoolkitRelyingPartyResetPasswordRequest
    , IdentitytoolkitRelyingPartyResetPasswordRequest
    , identitytoolkitRelyingPartyResetPasswordRequest
    , irprprEmail
    , irprprNewPassword
    , irprprOOBCode
    , irprprOldPassword

    -- * GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- * GetOOBConfirmationCodeResponse
    , GetOOBConfirmationCodeResponse
    , getOOBConfirmationCodeResponse
    , goobccrKind
    , goobccrOOBCode

    -- * IdentitytoolkitRelyingPartyDeleteAccountRequest
    , IdentitytoolkitRelyingPartyDeleteAccountRequest
    , identitytoolkitRelyingPartyDeleteAccountRequest
    , irpdarLocalId

    -- * SetAccountInfoResponseProviderUserInfo
    , SetAccountInfoResponseProviderUserInfo
    , setAccountInfoResponseProviderUserInfo
    , sairpuiProviderId
    , sairpuiPhotoURL
    , sairpuiDisplayName

    -- * IdentitytoolkitRelyingPartyDownloadAccountRequest
    , IdentitytoolkitRelyingPartyDownloadAccountRequest
    , identitytoolkitRelyingPartyDownloadAccountRequest
    , irpdarNextPageToken
    , irpdarMaxResults

    -- * VerifyPasswordResponse
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

    -- * VerifyAssertionResponse
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

    -- * SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairKind
    , sairProviderUserInfo
    , sairDisplayName
    , sairNewEmail
    , sairIdToken

    -- * GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken

    -- * UploadAccountResponseError
    , UploadAccountResponseError
    , uploadAccountResponseError
    , uareMessage
    , uareIndex

    -- * UserInfoProviderUserInfo
    , UserInfoProviderUserInfo
    , userInfoProviderUserInfo
    , uipuiProviderId
    , uipuiPhotoURL
    , uipuiFederatedId
    , uipuiDisplayName
    ) where

import           Network.Google.IdentityToolkit.Types.Product
import           Network.Google.IdentityToolkit.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v3' of the Google Identity Toolkit API.
identityToolkitURL :: BaseUrl
identityToolkitURL
  = BaseUrl Https
      "https://www.googleapis.com/identitytoolkit/v3/relyingparty/"
      443
