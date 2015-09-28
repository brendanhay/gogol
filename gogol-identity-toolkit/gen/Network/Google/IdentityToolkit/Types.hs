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

    -- * IdentitytoolkitRelyingpartyGetPublicKeysResponse
    , IdentitytoolkitRelyingpartyGetPublicKeysResponse
    , identitytoolkitRelyingpartyGetPublicKeysResponse

    -- * IdentitytoolkitRelyingpartyGetAccountInfoRequest
    , IdentitytoolkitRelyingpartyGetAccountInfoRequest
    , identitytoolkitRelyingpartyGetAccountInfoRequest
    , irgairEmail
    , irgairLocalId
    , irgairIdToken

    -- * Relyingparty
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

    -- * IdentitytoolkitRelyingpartyResetPasswordRequest
    , IdentitytoolkitRelyingpartyResetPasswordRequest
    , identitytoolkitRelyingpartyResetPasswordRequest
    , irrprEmail
    , irrprNewPassword
    , irrprOobCode
    , irrprOldPassword

    -- * IdentitytoolkitRelyingpartyUploadAccountRequest
    , IdentitytoolkitRelyingpartyUploadAccountRequest
    , identitytoolkitRelyingpartyUploadAccountRequest
    , iruarUsers
    , iruarMemoryCost
    , iruarSaltSeparator
    , iruarHashAlgorithm
    , iruarSignerKey
    , iruarRounds

    -- * UploadAccountResponseItemError
    , UploadAccountResponseItemError
    , uploadAccountResponseItemError
    , uarieMessage
    , uarieIndex

    -- * IdentitytoolkitRelyingpartyCreateAuthUriRequest
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

    -- * Alt
    , Alt (..)

    -- * GetOobConfirmationCodeResponse
    , GetOobConfirmationCodeResponse
    , getOobConfirmationCodeResponse
    , goccrKind
    , goccrOobCode

    -- * IdentitytoolkitRelyingpartyDeleteAccountRequest
    , IdentitytoolkitRelyingpartyDeleteAccountRequest
    , identitytoolkitRelyingpartyDeleteAccountRequest
    , irdarLocalId

    -- * IdentitytoolkitRelyingpartyDownloadAccountRequest
    , IdentitytoolkitRelyingpartyDownloadAccountRequest
    , identitytoolkitRelyingpartyDownloadAccountRequest
    , irdarNextPageToken
    , irdarMaxResults

    -- * VerifyPasswordResponse
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

    -- * DownloadAccountResponse
    , DownloadAccountResponse
    , downloadAccountResponse
    , darNextPageToken
    , darUsers
    , darKind

    -- * GetRecaptchaParamResponse
    , GetRecaptchaParamResponse
    , getRecaptchaParamResponse
    , grprRecaptchaSiteKey
    , grprKind
    , grprRecaptchaStoken

    -- * UserInfo
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

    -- * UserInfoItemProviderUserInfo
    , UserInfoItemProviderUserInfo
    , userInfoItemProviderUserInfo
    , uiipuiProviderId
    , uiipuiPhotoUrl
    , uiipuiFederatedId
    , uiipuiDisplayName

    -- * GetAccountInfoResponse
    , GetAccountInfoResponse
    , getAccountInfoResponse
    , gairUsers
    , gairKind

    -- * IdentitytoolkitRelyingpartyVerifyPasswordRequest
    , IdentitytoolkitRelyingpartyVerifyPasswordRequest
    , identitytoolkitRelyingpartyVerifyPasswordRequest
    , irvprEmail
    , irvprCaptchaChallenge
    , irvprPassword
    , irvprCaptchaResponse
    , irvprPendingIdToken

    -- * IdentitytoolkitRelyingpartySetAccountInfoRequest
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

    -- * IdentitytoolkitRelyingpartyVerifyAssertionRequest
    , IdentitytoolkitRelyingpartyVerifyAssertionRequest
    , identitytoolkitRelyingpartyVerifyAssertionRequest
    , irvarPostBody
    , irvarReturnRefreshToken
    , irvarRequestUri
    , irvarPendingIdToken

    -- * DeleteAccountResponse
    , DeleteAccountResponse
    , deleteAccountResponse
    , dKind

    -- * SetAccountInfoResponse
    , SetAccountInfoResponse
    , setAccountInfoResponse
    , sairEmail
    , sairKind
    , sairProviderUserInfo
    , sairDisplayName
    , sairNewEmail
    , sairIdToken

    -- * VerifyAssertionResponse
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

    -- * SetAccountInfoResponseItemProviderUserInfo
    , SetAccountInfoResponseItemProviderUserInfo
    , setAccountInfoResponseItemProviderUserInfo
    , sairipuiProviderId
    , sairipuiPhotoUrl
    , sairipuiDisplayName

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

    -- * CreateAuthUriResponse
    , CreateAuthUriResponse
    , createAuthUriResponse
    , caurProviderId
    , caurKind
    , caurAuthUri
    , caurCaptchaRequired
    , caurRegistered
    , caurForExistingProvider
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
