{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IAMCredentials.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.IAMCredentials.Internal.Product
  (

    -- * GenerateAccessTokenRequest
    GenerateAccessTokenRequest (..),
    newGenerateAccessTokenRequest,

    -- * GenerateAccessTokenResponse
    GenerateAccessTokenResponse (..),
    newGenerateAccessTokenResponse,

    -- * GenerateIdTokenRequest
    GenerateIdTokenRequest (..),
    newGenerateIdTokenRequest,

    -- * GenerateIdTokenResponse
    GenerateIdTokenResponse (..),
    newGenerateIdTokenResponse,

    -- * SignBlobRequest
    SignBlobRequest (..),
    newSignBlobRequest,

    -- * SignBlobResponse
    SignBlobResponse (..),
    newSignBlobResponse,

    -- * SignJwtRequest
    SignJwtRequest (..),
    newSignJwtRequest,

    -- * SignJwtResponse
    SignJwtResponse (..),
    newSignJwtResponse,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.IAMCredentials.Internal.Sum

--
-- /See:/ 'newGenerateAccessTokenRequest' smart constructor.
data GenerateAccessTokenRequest = GenerateAccessTokenRequest
    {
      -- | The sequence of service accounts in a delegation chain. This field is required for <https://cloud.google.com/iam/help/credentials/delegated-request delegated requests>. For <https://cloud.google.com/iam/help/credentials/direct-request direct requests>, which are more common, do not specify this field. Each service account must be granted the @roles\/iam.serviceAccountTokenCreator@ role on its next service account in the chain. The last service account in the chain must be granted the @roles\/iam.serviceAccountTokenCreator@ role on the service account that is specified in the @name@ field of the request. The delegates must have the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid.
      delegates :: (Core.Maybe [Core.Text])
      -- | The desired lifetime duration of the access token in seconds. By default, the maximum allowed value is 1 hour. To set a lifetime of up to 12 hours, you can add the service account as an allowed value in an Organization Policy that enforces the @constraints\/iam.allowServiceAccountCredentialLifetimeExtension@ constraint. See detailed instructions at https:\/\/cloud.google.com\/iam\/help\/credentials\/lifetime If a value is not specified, the token\'s lifetime will be set to a default value of 1 hour.
    , lifetime :: (Core.Maybe Core.GDuration)
      -- | Required. Code to identify the scopes to be included in the OAuth 2.0 access token. See https:\/\/developers.google.com\/identity\/protocols\/googlescopes for more information. At least one value required.
    , scope :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateAccessTokenRequest' with the minimum fields required to make a request.
newGenerateAccessTokenRequest 
    ::  GenerateAccessTokenRequest
newGenerateAccessTokenRequest =
  GenerateAccessTokenRequest
    {delegates = Core.Nothing, lifetime = Core.Nothing, scope = Core.Nothing}

instance Core.FromJSON GenerateAccessTokenRequest
         where
        parseJSON
          = Core.withObject "GenerateAccessTokenRequest"
              (\ o ->
                 GenerateAccessTokenRequest Core.<$>
                   (o Core..:? "delegates" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "lifetime")
                     Core.<*> (o Core..:? "scope" Core..!= Core.mempty))

instance Core.ToJSON GenerateAccessTokenRequest where
        toJSON GenerateAccessTokenRequest{..}
          = Core.object
              (Core.catMaybes
                 [("delegates" Core..=) Core.<$> delegates,
                  ("lifetime" Core..=) Core.<$> lifetime,
                  ("scope" Core..=) Core.<$> scope])


--
-- /See:/ 'newGenerateAccessTokenResponse' smart constructor.
data GenerateAccessTokenResponse = GenerateAccessTokenResponse
    {
      -- | The OAuth 2.0 access token.
      accessToken :: (Core.Maybe Core.Text)
      -- | Token expiration time. The expiration time is always set.
    , expireTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateAccessTokenResponse' with the minimum fields required to make a request.
newGenerateAccessTokenResponse 
    ::  GenerateAccessTokenResponse
newGenerateAccessTokenResponse =
  GenerateAccessTokenResponse
    {accessToken = Core.Nothing, expireTime = Core.Nothing}

instance Core.FromJSON GenerateAccessTokenResponse
         where
        parseJSON
          = Core.withObject "GenerateAccessTokenResponse"
              (\ o ->
                 GenerateAccessTokenResponse Core.<$>
                   (o Core..:? "accessToken") Core.<*>
                     (o Core..:? "expireTime"))

instance Core.ToJSON GenerateAccessTokenResponse
         where
        toJSON GenerateAccessTokenResponse{..}
          = Core.object
              (Core.catMaybes
                 [("accessToken" Core..=) Core.<$> accessToken,
                  ("expireTime" Core..=) Core.<$> expireTime])


--
-- /See:/ 'newGenerateIdTokenRequest' smart constructor.
data GenerateIdTokenRequest = GenerateIdTokenRequest
    {
      -- | Required. The audience for the token, such as the API or account that this token grants access to.
      audience :: (Core.Maybe Core.Text)
      -- | The sequence of service accounts in a delegation chain. Each service account must be granted the @roles\/iam.serviceAccountTokenCreator@ role on its next service account in the chain. The last service account in the chain must be granted the @roles\/iam.serviceAccountTokenCreator@ role on the service account that is specified in the @name@ field of the request. The delegates must have the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid.
    , delegates :: (Core.Maybe [Core.Text])
      -- | Include the service account email in the token. If set to @true@, the token will contain @email@ and @email_verified@ claims.
    , includeEmail :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateIdTokenRequest' with the minimum fields required to make a request.
newGenerateIdTokenRequest 
    ::  GenerateIdTokenRequest
newGenerateIdTokenRequest =
  GenerateIdTokenRequest
    { audience = Core.Nothing
    , delegates = Core.Nothing
    , includeEmail = Core.Nothing
    }

instance Core.FromJSON GenerateIdTokenRequest where
        parseJSON
          = Core.withObject "GenerateIdTokenRequest"
              (\ o ->
                 GenerateIdTokenRequest Core.<$>
                   (o Core..:? "audience") Core.<*>
                     (o Core..:? "delegates" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "includeEmail"))

instance Core.ToJSON GenerateIdTokenRequest where
        toJSON GenerateIdTokenRequest{..}
          = Core.object
              (Core.catMaybes
                 [("audience" Core..=) Core.<$> audience,
                  ("delegates" Core..=) Core.<$> delegates,
                  ("includeEmail" Core..=) Core.<$> includeEmail])


--
-- /See:/ 'newGenerateIdTokenResponse' smart constructor.
newtype GenerateIdTokenResponse = GenerateIdTokenResponse
    {
      -- | The OpenId Connect ID token.
      token :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateIdTokenResponse' with the minimum fields required to make a request.
newGenerateIdTokenResponse 
    ::  GenerateIdTokenResponse
newGenerateIdTokenResponse = GenerateIdTokenResponse {token = Core.Nothing}

instance Core.FromJSON GenerateIdTokenResponse where
        parseJSON
          = Core.withObject "GenerateIdTokenResponse"
              (\ o ->
                 GenerateIdTokenResponse Core.<$>
                   (o Core..:? "token"))

instance Core.ToJSON GenerateIdTokenResponse where
        toJSON GenerateIdTokenResponse{..}
          = Core.object
              (Core.catMaybes [("token" Core..=) Core.<$> token])


--
-- /See:/ 'newSignBlobRequest' smart constructor.
data SignBlobRequest = SignBlobRequest
    {
      -- | The sequence of service accounts in a delegation chain. Each service account must be granted the @roles\/iam.serviceAccountTokenCreator@ role on its next service account in the chain. The last service account in the chain must be granted the @roles\/iam.serviceAccountTokenCreator@ role on the service account that is specified in the @name@ field of the request. The delegates must have the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid.
      delegates :: (Core.Maybe [Core.Text])
      -- | Required. The bytes to sign.
    , payload :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignBlobRequest' with the minimum fields required to make a request.
newSignBlobRequest 
    ::  SignBlobRequest
newSignBlobRequest =
  SignBlobRequest {delegates = Core.Nothing, payload = Core.Nothing}

instance Core.FromJSON SignBlobRequest where
        parseJSON
          = Core.withObject "SignBlobRequest"
              (\ o ->
                 SignBlobRequest Core.<$>
                   (o Core..:? "delegates" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "payload"))

instance Core.ToJSON SignBlobRequest where
        toJSON SignBlobRequest{..}
          = Core.object
              (Core.catMaybes
                 [("delegates" Core..=) Core.<$> delegates,
                  ("payload" Core..=) Core.<$> payload])


--
-- /See:/ 'newSignBlobResponse' smart constructor.
data SignBlobResponse = SignBlobResponse
    {
      -- | The ID of the key used to sign the blob. The key used for signing will remain valid for at least 12 hours after the blob is signed. To verify the signature, you can retrieve the public key in several formats from the following endpoints: - RSA public key wrapped in an X.509 v3 certificate: @https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/x509\/{ACCOUNT_EMAIL}@ - Raw key in JSON format: @https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/raw\/{ACCOUNT_EMAIL}@ - JSON Web Key (JWK): @https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/jwk\/{ACCOUNT_EMAIL}@
      keyId :: (Core.Maybe Core.Text)
      -- | The signature for the blob. Does not include the original blob. After the key pair referenced by the @key_id@ response field expires, Google no longer exposes the public key that can be used to verify the blob. As a result, the receiver can no longer verify the signature.
    , signedBlob :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignBlobResponse' with the minimum fields required to make a request.
newSignBlobResponse 
    ::  SignBlobResponse
newSignBlobResponse =
  SignBlobResponse {keyId = Core.Nothing, signedBlob = Core.Nothing}

instance Core.FromJSON SignBlobResponse where
        parseJSON
          = Core.withObject "SignBlobResponse"
              (\ o ->
                 SignBlobResponse Core.<$>
                   (o Core..:? "keyId") Core.<*>
                     (o Core..:? "signedBlob"))

instance Core.ToJSON SignBlobResponse where
        toJSON SignBlobResponse{..}
          = Core.object
              (Core.catMaybes
                 [("keyId" Core..=) Core.<$> keyId,
                  ("signedBlob" Core..=) Core.<$> signedBlob])


--
-- /See:/ 'newSignJwtRequest' smart constructor.
data SignJwtRequest = SignJwtRequest
    {
      -- | The sequence of service accounts in a delegation chain. Each service account must be granted the @roles\/iam.serviceAccountTokenCreator@ role on its next service account in the chain. The last service account in the chain must be granted the @roles\/iam.serviceAccountTokenCreator@ role on the service account that is specified in the @name@ field of the request. The delegates must have the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid.
      delegates :: (Core.Maybe [Core.Text])
      -- | Required. The JWT payload to sign. Must be a serialized JSON object that contains a JWT Claims Set. For example: @{\"sub\": \"user\@example.com\", \"iat\": 313435}@ If the JWT Claims Set contains an expiration time (@exp@) claim, it must be an integer timestamp that is not in the past and no more than 12 hours in the future.
    , payload :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignJwtRequest' with the minimum fields required to make a request.
newSignJwtRequest 
    ::  SignJwtRequest
newSignJwtRequest =
  SignJwtRequest {delegates = Core.Nothing, payload = Core.Nothing}

instance Core.FromJSON SignJwtRequest where
        parseJSON
          = Core.withObject "SignJwtRequest"
              (\ o ->
                 SignJwtRequest Core.<$>
                   (o Core..:? "delegates" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "payload"))

instance Core.ToJSON SignJwtRequest where
        toJSON SignJwtRequest{..}
          = Core.object
              (Core.catMaybes
                 [("delegates" Core..=) Core.<$> delegates,
                  ("payload" Core..=) Core.<$> payload])


--
-- /See:/ 'newSignJwtResponse' smart constructor.
data SignJwtResponse = SignJwtResponse
    {
      -- | The ID of the key used to sign the JWT. The key used for signing will remain valid for at least 12 hours after the JWT is signed. To verify the signature, you can retrieve the public key in several formats from the following endpoints: - RSA public key wrapped in an X.509 v3 certificate: @https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/x509\/{ACCOUNT_EMAIL}@ - Raw key in JSON format: @https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/raw\/{ACCOUNT_EMAIL}@ - JSON Web Key (JWK): @https:\/\/www.googleapis.com\/service_accounts\/v1\/metadata\/jwk\/{ACCOUNT_EMAIL}@
      keyId :: (Core.Maybe Core.Text)
      -- | The signed JWT. Contains the automatically generated header; the client-supplied payload; and the signature, which is generated using the key referenced by the @kid@ field in the header. After the key pair referenced by the @key_id@ response field expires, Google no longer exposes the public key that can be used to verify the JWT. As a result, the receiver can no longer verify the signature.
    , signedJwt :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignJwtResponse' with the minimum fields required to make a request.
newSignJwtResponse 
    ::  SignJwtResponse
newSignJwtResponse =
  SignJwtResponse {keyId = Core.Nothing, signedJwt = Core.Nothing}

instance Core.FromJSON SignJwtResponse where
        parseJSON
          = Core.withObject "SignJwtResponse"
              (\ o ->
                 SignJwtResponse Core.<$>
                   (o Core..:? "keyId") Core.<*>
                     (o Core..:? "signedJwt"))

instance Core.ToJSON SignJwtResponse where
        toJSON SignJwtResponse{..}
          = Core.object
              (Core.catMaybes
                 [("keyId" Core..=) Core.<$> keyId,
                  ("signedJwt" Core..=) Core.<$> signedJwt])

