{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IdentityToolkit.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IdentityToolkit.Types
  ( -- * Configuration
    identityToolkitService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Firebase'FullControl,

    -- * Types

    -- ** CreateAuthUriResponse
    CreateAuthUriResponse (..),
    newCreateAuthUriResponse,

    -- ** DeleteAccountResponse
    DeleteAccountResponse (..),
    newDeleteAccountResponse,

    -- ** DownloadAccountResponse
    DownloadAccountResponse (..),
    newDownloadAccountResponse,

    -- ** EmailLinkSigninResponse
    EmailLinkSigninResponse (..),
    newEmailLinkSigninResponse,

    -- ** EmailTemplate
    EmailTemplate (..),
    newEmailTemplate,

    -- ** GetAccountInfoResponse
    GetAccountInfoResponse (..),
    newGetAccountInfoResponse,

    -- ** GetOobConfirmationCodeResponse
    GetOobConfirmationCodeResponse (..),
    newGetOobConfirmationCodeResponse,

    -- ** GetRecaptchaParamResponse
    GetRecaptchaParamResponse (..),
    newGetRecaptchaParamResponse,

    -- ** IdentitytoolkitRelyingpartyCreateAuthUriRequest
    IdentitytoolkitRelyingpartyCreateAuthUriRequest (..),
    newIdentitytoolkitRelyingpartyCreateAuthUriRequest,

    -- ** IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter
    IdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter (..),
    newIdentitytoolkitRelyingpartyCreateAuthUriRequest_CustomParameter,

    -- ** IdentitytoolkitRelyingpartyDeleteAccountRequest
    IdentitytoolkitRelyingpartyDeleteAccountRequest (..),
    newIdentitytoolkitRelyingpartyDeleteAccountRequest,

    -- ** IdentitytoolkitRelyingpartyDownloadAccountRequest
    IdentitytoolkitRelyingpartyDownloadAccountRequest (..),
    newIdentitytoolkitRelyingpartyDownloadAccountRequest,

    -- ** IdentitytoolkitRelyingpartyEmailLinkSigninRequest
    IdentitytoolkitRelyingpartyEmailLinkSigninRequest (..),
    newIdentitytoolkitRelyingpartyEmailLinkSigninRequest,

    -- ** IdentitytoolkitRelyingpartyGetAccountInfoRequest
    IdentitytoolkitRelyingpartyGetAccountInfoRequest (..),
    newIdentitytoolkitRelyingpartyGetAccountInfoRequest,

    -- ** IdentitytoolkitRelyingpartyGetProjectConfigResponse
    IdentitytoolkitRelyingpartyGetProjectConfigResponse (..),
    newIdentitytoolkitRelyingpartyGetProjectConfigResponse,

    -- ** IdentitytoolkitRelyingpartyGetPublicKeysResponse
    IdentitytoolkitRelyingpartyGetPublicKeysResponse (..),
    newIdentitytoolkitRelyingpartyGetPublicKeysResponse,

    -- ** IdentitytoolkitRelyingpartyResetPasswordRequest
    IdentitytoolkitRelyingpartyResetPasswordRequest (..),
    newIdentitytoolkitRelyingpartyResetPasswordRequest,

    -- ** IdentitytoolkitRelyingpartySendVerificationCodeRequest
    IdentitytoolkitRelyingpartySendVerificationCodeRequest (..),
    newIdentitytoolkitRelyingpartySendVerificationCodeRequest,

    -- ** IdentitytoolkitRelyingpartySendVerificationCodeResponse
    IdentitytoolkitRelyingpartySendVerificationCodeResponse (..),
    newIdentitytoolkitRelyingpartySendVerificationCodeResponse,

    -- ** IdentitytoolkitRelyingpartySetAccountInfoRequest
    IdentitytoolkitRelyingpartySetAccountInfoRequest (..),
    newIdentitytoolkitRelyingpartySetAccountInfoRequest,

    -- ** IdentitytoolkitRelyingpartySetProjectConfigRequest
    IdentitytoolkitRelyingpartySetProjectConfigRequest (..),
    newIdentitytoolkitRelyingpartySetProjectConfigRequest,

    -- ** IdentitytoolkitRelyingpartySetProjectConfigResponse
    IdentitytoolkitRelyingpartySetProjectConfigResponse (..),
    newIdentitytoolkitRelyingpartySetProjectConfigResponse,

    -- ** IdentitytoolkitRelyingpartySignOutUserRequest
    IdentitytoolkitRelyingpartySignOutUserRequest (..),
    newIdentitytoolkitRelyingpartySignOutUserRequest,

    -- ** IdentitytoolkitRelyingpartySignOutUserResponse
    IdentitytoolkitRelyingpartySignOutUserResponse (..),
    newIdentitytoolkitRelyingpartySignOutUserResponse,

    -- ** IdentitytoolkitRelyingpartySignupNewUserRequest
    IdentitytoolkitRelyingpartySignupNewUserRequest (..),
    newIdentitytoolkitRelyingpartySignupNewUserRequest,

    -- ** IdentitytoolkitRelyingpartyUploadAccountRequest
    IdentitytoolkitRelyingpartyUploadAccountRequest (..),
    newIdentitytoolkitRelyingpartyUploadAccountRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyAssertionRequest
    IdentitytoolkitRelyingpartyVerifyAssertionRequest (..),
    newIdentitytoolkitRelyingpartyVerifyAssertionRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyCustomTokenRequest
    IdentitytoolkitRelyingpartyVerifyCustomTokenRequest (..),
    newIdentitytoolkitRelyingpartyVerifyCustomTokenRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyPasswordRequest
    IdentitytoolkitRelyingpartyVerifyPasswordRequest (..),
    newIdentitytoolkitRelyingpartyVerifyPasswordRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest
    IdentitytoolkitRelyingpartyVerifyPhoneNumberRequest (..),
    newIdentitytoolkitRelyingpartyVerifyPhoneNumberRequest,

    -- ** IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse
    IdentitytoolkitRelyingpartyVerifyPhoneNumberResponse (..),
    newIdentitytoolkitRelyingpartyVerifyPhoneNumberResponse,

    -- ** IdpConfig
    IdpConfig (..),
    newIdpConfig,

    -- ** Relyingparty
    Relyingparty (..),
    newRelyingparty,

    -- ** ResetPasswordResponse
    ResetPasswordResponse (..),
    newResetPasswordResponse,

    -- ** SetAccountInfoResponse
    SetAccountInfoResponse (..),
    newSetAccountInfoResponse,

    -- ** SetAccountInfoResponse_ProviderUserInfoItem
    SetAccountInfoResponse_ProviderUserInfoItem (..),
    newSetAccountInfoResponse_ProviderUserInfoItem,

    -- ** SignupNewUserResponse
    SignupNewUserResponse (..),
    newSignupNewUserResponse,

    -- ** UploadAccountResponse
    UploadAccountResponse (..),
    newUploadAccountResponse,

    -- ** UploadAccountResponse_ErrorItem
    UploadAccountResponse_ErrorItem (..),
    newUploadAccountResponse_ErrorItem,

    -- ** UserInfo
    UserInfo (..),
    newUserInfo,

    -- ** UserInfo_ProviderUserInfoItem
    UserInfo_ProviderUserInfoItem (..),
    newUserInfo_ProviderUserInfoItem,

    -- ** VerifyAssertionResponse
    VerifyAssertionResponse (..),
    newVerifyAssertionResponse,

    -- ** VerifyCustomTokenResponse
    VerifyCustomTokenResponse (..),
    newVerifyCustomTokenResponse,

    -- ** VerifyPasswordResponse
    VerifyPasswordResponse (..),
    newVerifyPasswordResponse,
  )
where

import Gogol.IdentityToolkit.Internal.Product
import Gogol.IdentityToolkit.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v3@ of the Google Identity Toolkit API. This contains the host and root path used as a starting point for constructing service requests.
identityToolkitService :: Core.ServiceConfig
identityToolkitService =
  Core.defaultService
    (Core.ServiceId "identitytoolkit:v3")
    "www.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View and administer all your Firebase data and settings
type Firebase'FullControl =
  "https://www.googleapis.com/auth/firebase"
