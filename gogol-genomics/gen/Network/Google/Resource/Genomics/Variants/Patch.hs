{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variants.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant. This method supports patch semantics. Returns the
-- modified variant without its calls.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsPatch@.
module Network.Google.Resource.Genomics.Variants.Patch
    (
    -- * REST Resource
      VariantsPatchResource

    -- * Creating a Request
    , variantsPatch'
    , VariantsPatch'

    -- * Request Lenses
    , vppXgafv
    , vppQuotaUser
    , vppPrettyPrint
    , vppUploadProtocol
    , vppUpdateMask
    , vppPp
    , vppAccessToken
    , vppUploadType
    , vppPayload
    , vppBearerToken
    , vppKey
    , vppVariantId
    , vppOAuthToken
    , vppFields
    , vppCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsPatch@ method which the
-- 'VariantsPatch'' request conforms to.
type VariantsPatchResource =
     "v1" :>
       "variants" :>
         Capture "variantId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       ReqBody '[JSON] Variant :>
                                         Patch '[JSON] Variant

-- | Updates a variant. This method supports patch semantics. Returns the
-- modified variant without its calls.
--
-- /See:/ 'variantsPatch'' smart constructor.
data VariantsPatch' = VariantsPatch'
    { _vppXgafv          :: !(Maybe Text)
    , _vppQuotaUser      :: !(Maybe Text)
    , _vppPrettyPrint    :: !Bool
    , _vppUploadProtocol :: !(Maybe Text)
    , _vppUpdateMask     :: !(Maybe Text)
    , _vppPp             :: !Bool
    , _vppAccessToken    :: !(Maybe Text)
    , _vppUploadType     :: !(Maybe Text)
    , _vppPayload        :: !Variant
    , _vppBearerToken    :: !(Maybe Text)
    , _vppKey            :: !(Maybe AuthKey)
    , _vppVariantId      :: !Text
    , _vppOAuthToken     :: !(Maybe OAuthToken)
    , _vppFields         :: !(Maybe Text)
    , _vppCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vppXgafv'
--
-- * 'vppQuotaUser'
--
-- * 'vppPrettyPrint'
--
-- * 'vppUploadProtocol'
--
-- * 'vppUpdateMask'
--
-- * 'vppPp'
--
-- * 'vppAccessToken'
--
-- * 'vppUploadType'
--
-- * 'vppPayload'
--
-- * 'vppBearerToken'
--
-- * 'vppKey'
--
-- * 'vppVariantId'
--
-- * 'vppOAuthToken'
--
-- * 'vppFields'
--
-- * 'vppCallback'
variantsPatch'
    :: Variant -- ^ 'payload'
    -> Text -- ^ 'variantId'
    -> VariantsPatch'
variantsPatch' pVppPayload_ pVppVariantId_ =
    VariantsPatch'
    { _vppXgafv = Nothing
    , _vppQuotaUser = Nothing
    , _vppPrettyPrint = True
    , _vppUploadProtocol = Nothing
    , _vppUpdateMask = Nothing
    , _vppPp = True
    , _vppAccessToken = Nothing
    , _vppUploadType = Nothing
    , _vppPayload = pVppPayload_
    , _vppBearerToken = Nothing
    , _vppKey = Nothing
    , _vppVariantId = pVppVariantId_
    , _vppOAuthToken = Nothing
    , _vppFields = Nothing
    , _vppCallback = Nothing
    }

-- | V1 error format.
vppXgafv :: Lens' VariantsPatch' (Maybe Text)
vppXgafv = lens _vppXgafv (\ s a -> s{_vppXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
vppQuotaUser :: Lens' VariantsPatch' (Maybe Text)
vppQuotaUser
  = lens _vppQuotaUser (\ s a -> s{_vppQuotaUser = a})

-- | Returns response with indentations and line breaks.
vppPrettyPrint :: Lens' VariantsPatch' Bool
vppPrettyPrint
  = lens _vppPrettyPrint
      (\ s a -> s{_vppPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vppUploadProtocol :: Lens' VariantsPatch' (Maybe Text)
vppUploadProtocol
  = lens _vppUploadProtocol
      (\ s a -> s{_vppUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time,
-- mutable fields are names and info. Acceptable values are \"names\" and
-- \"info\". If unspecified, all mutable fields will be updated.
vppUpdateMask :: Lens' VariantsPatch' (Maybe Text)
vppUpdateMask
  = lens _vppUpdateMask
      (\ s a -> s{_vppUpdateMask = a})

-- | Pretty-print response.
vppPp :: Lens' VariantsPatch' Bool
vppPp = lens _vppPp (\ s a -> s{_vppPp = a})

-- | OAuth access token.
vppAccessToken :: Lens' VariantsPatch' (Maybe Text)
vppAccessToken
  = lens _vppAccessToken
      (\ s a -> s{_vppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vppUploadType :: Lens' VariantsPatch' (Maybe Text)
vppUploadType
  = lens _vppUploadType
      (\ s a -> s{_vppUploadType = a})

-- | Multipart request metadata.
vppPayload :: Lens' VariantsPatch' Variant
vppPayload
  = lens _vppPayload (\ s a -> s{_vppPayload = a})

-- | OAuth bearer token.
vppBearerToken :: Lens' VariantsPatch' (Maybe Text)
vppBearerToken
  = lens _vppBearerToken
      (\ s a -> s{_vppBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vppKey :: Lens' VariantsPatch' (Maybe AuthKey)
vppKey = lens _vppKey (\ s a -> s{_vppKey = a})

-- | The ID of the variant to be updated.
vppVariantId :: Lens' VariantsPatch' Text
vppVariantId
  = lens _vppVariantId (\ s a -> s{_vppVariantId = a})

-- | OAuth 2.0 token for the current user.
vppOAuthToken :: Lens' VariantsPatch' (Maybe OAuthToken)
vppOAuthToken
  = lens _vppOAuthToken
      (\ s a -> s{_vppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vppFields :: Lens' VariantsPatch' (Maybe Text)
vppFields
  = lens _vppFields (\ s a -> s{_vppFields = a})

-- | JSONP
vppCallback :: Lens' VariantsPatch' (Maybe Text)
vppCallback
  = lens _vppCallback (\ s a -> s{_vppCallback = a})

instance GoogleAuth VariantsPatch' where
        _AuthKey = vppKey . _Just
        _AuthToken = vppOAuthToken . _Just

instance GoogleRequest VariantsPatch' where
        type Rs VariantsPatch' = Variant
        request = requestWith genomicsRequest
        requestWith rq VariantsPatch'{..}
          = go _vppVariantId _vppXgafv _vppUploadProtocol
              _vppUpdateMask
              (Just _vppPp)
              _vppAccessToken
              _vppUploadType
              _vppBearerToken
              _vppCallback
              _vppQuotaUser
              (Just _vppPrettyPrint)
              _vppFields
              _vppKey
              _vppOAuthToken
              (Just AltJSON)
              _vppPayload
          where go
                  = clientBuild (Proxy :: Proxy VariantsPatchResource)
                      rq
