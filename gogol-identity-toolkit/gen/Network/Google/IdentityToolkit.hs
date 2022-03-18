{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.IdentityToolkit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Help the third party sites to implement federated login.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference>
module Network.Google.IdentityToolkit
  ( -- * Configuration
    identityToolkitService,

    -- * OAuth Scopes
    cloudPlatformScope,
    firebaseScope,

    -- * Resources

    -- ** identitytoolkit.relyingparty.createAuthUri
    IdentityToolkitRelyingpartyCreateAuthUriResource,
    newIdentityToolkitRelyingpartyCreateAuthUri,
    IdentityToolkitRelyingpartyCreateAuthUri,

    -- ** identitytoolkit.relyingparty.deleteAccount
    IdentityToolkitRelyingpartyDeleteAccountResource,
    newIdentityToolkitRelyingpartyDeleteAccount,
    IdentityToolkitRelyingpartyDeleteAccount,

    -- ** identitytoolkit.relyingparty.downloadAccount
    IdentityToolkitRelyingpartyDownloadAccountResource,
    newIdentityToolkitRelyingpartyDownloadAccount,
    IdentityToolkitRelyingpartyDownloadAccount,

    -- ** identitytoolkit.relyingparty.emailLinkSignin
    IdentityToolkitRelyingpartyEmailLinkSigninResource,
    newIdentityToolkitRelyingpartyEmailLinkSignin,
    IdentityToolkitRelyingpartyEmailLinkSignin,

    -- ** identitytoolkit.relyingparty.getAccountInfo
    IdentityToolkitRelyingpartyGetAccountInfoResource,
    newIdentityToolkitRelyingpartyGetAccountInfo,
    IdentityToolkitRelyingpartyGetAccountInfo,

    -- ** identitytoolkit.relyingparty.getOobConfirmationCode
    IdentityToolkitRelyingpartyGetOobConfirmationCodeResource,
    newIdentityToolkitRelyingpartyGetOobConfirmationCode,
    IdentityToolkitRelyingpartyGetOobConfirmationCode,

    -- ** identitytoolkit.relyingparty.getProjectConfig
    IdentityToolkitRelyingpartyGetProjectConfigResource,
    newIdentityToolkitRelyingpartyGetProjectConfig,
    IdentityToolkitRelyingpartyGetProjectConfig,

    -- ** identitytoolkit.relyingparty.getPublicKeys
    IdentityToolkitRelyingpartyGetPublicKeysResource,
    newIdentityToolkitRelyingpartyGetPublicKeys,
    IdentityToolkitRelyingpartyGetPublicKeys,

    -- ** identitytoolkit.relyingparty.getRecaptchaParam
    IdentityToolkitRelyingpartyGetRecaptchaParamResource,
    newIdentityToolkitRelyingpartyGetRecaptchaParam,
    IdentityToolkitRelyingpartyGetRecaptchaParam,

    -- ** identitytoolkit.relyingparty.resetPassword
    IdentityToolkitRelyingpartyResetPasswordResource,
    newIdentityToolkitRelyingpartyResetPassword,
    IdentityToolkitRelyingpartyResetPassword,

    -- ** identitytoolkit.relyingparty.sendVerificationCode
    IdentityToolkitRelyingpartySendVerificationCodeResource,
    newIdentityToolkitRelyingpartySendVerificationCode,
    IdentityToolkitRelyingpartySendVerificationCode,

    -- ** identitytoolkit.relyingparty.setAccountInfo
    IdentityToolkitRelyingpartySetAccountInfoResource,
    newIdentityToolkitRelyingpartySetAccountInfo,
    IdentityToolkitRelyingpartySetAccountInfo,

    -- ** identitytoolkit.relyingparty.setProjectConfig
    IdentityToolkitRelyingpartySetProjectConfigResource,
    newIdentityToolkitRelyingpartySetProjectConfig,
    IdentityToolkitRelyingpartySetProjectConfig,

    -- ** identitytoolkit.relyingparty.signOutUser
    IdentityToolkitRelyingpartySignOutUserResource,
    newIdentityToolkitRelyingpartySignOutUser,
    IdentityToolkitRelyingpartySignOutUser,

    -- ** identitytoolkit.relyingparty.signupNewUser
    IdentityToolkitRelyingpartySignupNewUserResource,
    newIdentityToolkitRelyingpartySignupNewUser,
    IdentityToolkitRelyingpartySignupNewUser,

    -- ** identitytoolkit.relyingparty.uploadAccount
    IdentityToolkitRelyingpartyUploadAccountResource,
    newIdentityToolkitRelyingpartyUploadAccount,
    IdentityToolkitRelyingpartyUploadAccount,

    -- ** identitytoolkit.relyingparty.verifyAssertion
    IdentityToolkitRelyingpartyVerifyAssertionResource,
    newIdentityToolkitRelyingpartyVerifyAssertion,
    IdentityToolkitRelyingpartyVerifyAssertion,

    -- ** identitytoolkit.relyingparty.verifyCustomToken
    IdentityToolkitRelyingpartyVerifyCustomTokenResource,
    newIdentityToolkitRelyingpartyVerifyCustomToken,
    IdentityToolkitRelyingpartyVerifyCustomToken,

    -- ** identitytoolkit.relyingparty.verifyPassword
    IdentityToolkitRelyingpartyVerifyPasswordResource,
    newIdentityToolkitRelyingpartyVerifyPassword,
    IdentityToolkitRelyingpartyVerifyPassword,

    -- ** identitytoolkit.relyingparty.verifyPhoneNumber
    IdentityToolkitRelyingpartyVerifyPhoneNumberResource,
    newIdentityToolkitRelyingpartyVerifyPhoneNumber,
    IdentityToolkitRelyingpartyVerifyPhoneNumber,

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

import Network.Google.IdentityToolkit.Relyingparty.CreateAuthUri
import Network.Google.IdentityToolkit.Relyingparty.DeleteAccount
import Network.Google.IdentityToolkit.Relyingparty.DownloadAccount
import Network.Google.IdentityToolkit.Relyingparty.EmailLinkSignin
import Network.Google.IdentityToolkit.Relyingparty.GetAccountInfo
import Network.Google.IdentityToolkit.Relyingparty.GetOobConfirmationCode
import Network.Google.IdentityToolkit.Relyingparty.GetProjectConfig
import Network.Google.IdentityToolkit.Relyingparty.GetPublicKeys
import Network.Google.IdentityToolkit.Relyingparty.GetRecaptchaParam
import Network.Google.IdentityToolkit.Relyingparty.ResetPassword
import Network.Google.IdentityToolkit.Relyingparty.SendVerificationCode
import Network.Google.IdentityToolkit.Relyingparty.SetAccountInfo
import Network.Google.IdentityToolkit.Relyingparty.SetProjectConfig
import Network.Google.IdentityToolkit.Relyingparty.SignOutUser
import Network.Google.IdentityToolkit.Relyingparty.SignupNewUser
import Network.Google.IdentityToolkit.Relyingparty.UploadAccount
import Network.Google.IdentityToolkit.Relyingparty.VerifyAssertion
import Network.Google.IdentityToolkit.Relyingparty.VerifyCustomToken
import Network.Google.IdentityToolkit.Relyingparty.VerifyPassword
import Network.Google.IdentityToolkit.Relyingparty.VerifyPhoneNumber
import Network.Google.IdentityToolkit.Types
