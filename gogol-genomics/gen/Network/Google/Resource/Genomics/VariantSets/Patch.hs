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
-- Module      : Network.Google.Resource.Genomics.VariantSets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a variant set using patch semantics. For the definitions of
-- variant sets and other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variantsets.patch@.
module Network.Google.Resource.Genomics.VariantSets.Patch
    (
    -- * REST Resource
      VariantSetsPatchResource

    -- * Creating a Request
    , variantSetsPatch
    , VariantSetsPatch

    -- * Request Lenses
    , vspXgafv
    , vspUploadProtocol
    , vspUpdateMask
    , vspPp
    , vspVariantSetId
    , vspAccessToken
    , vspUploadType
    , vspPayload
    , vspBearerToken
    , vspCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.patch@ method which the
-- 'VariantSetsPatch' request conforms to.
type VariantSetsPatchResource =
     "v1" :>
       "variantsets" :>
         Capture "variantSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] VariantSet :>
                               Patch '[JSON] VariantSet

-- | Updates a variant set using patch semantics. For the definitions of
-- variant sets and other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'variantSetsPatch' smart constructor.
data VariantSetsPatch = VariantSetsPatch'
    { _vspXgafv          :: !(Maybe Text)
    , _vspUploadProtocol :: !(Maybe Text)
    , _vspUpdateMask     :: !(Maybe Text)
    , _vspPp             :: !Bool
    , _vspVariantSetId   :: !Text
    , _vspAccessToken    :: !(Maybe Text)
    , _vspUploadType     :: !(Maybe Text)
    , _vspPayload        :: !VariantSet
    , _vspBearerToken    :: !(Maybe Text)
    , _vspCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSetsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vspXgafv'
--
-- * 'vspUploadProtocol'
--
-- * 'vspUpdateMask'
--
-- * 'vspPp'
--
-- * 'vspVariantSetId'
--
-- * 'vspAccessToken'
--
-- * 'vspUploadType'
--
-- * 'vspPayload'
--
-- * 'vspBearerToken'
--
-- * 'vspCallback'
variantSetsPatch
    :: Text -- ^ 'vspVariantSetId'
    -> VariantSet -- ^ 'vspPayload'
    -> VariantSetsPatch
variantSetsPatch pVspVariantSetId_ pVspPayload_ =
    VariantSetsPatch'
    { _vspXgafv = Nothing
    , _vspUploadProtocol = Nothing
    , _vspUpdateMask = Nothing
    , _vspPp = True
    , _vspVariantSetId = pVspVariantSetId_
    , _vspAccessToken = Nothing
    , _vspUploadType = Nothing
    , _vspPayload = pVspPayload_
    , _vspBearerToken = Nothing
    , _vspCallback = Nothing
    }

-- | V1 error format.
vspXgafv :: Lens' VariantSetsPatch (Maybe Text)
vspXgafv = lens _vspXgafv (\ s a -> s{_vspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vspUploadProtocol :: Lens' VariantSetsPatch (Maybe Text)
vspUploadProtocol
  = lens _vspUploadProtocol
      (\ s a -> s{_vspUploadProtocol = a})

-- | An optional mask specifying which fields to update. Supported fields: *
-- metadata. * name. * description. Leaving \`updateMask\` unset is
-- equivalent to specifying all mutable fields.
vspUpdateMask :: Lens' VariantSetsPatch (Maybe Text)
vspUpdateMask
  = lens _vspUpdateMask
      (\ s a -> s{_vspUpdateMask = a})

-- | Pretty-print response.
vspPp :: Lens' VariantSetsPatch Bool
vspPp = lens _vspPp (\ s a -> s{_vspPp = a})

-- | The ID of the variant to be updated (must already exist).
vspVariantSetId :: Lens' VariantSetsPatch Text
vspVariantSetId
  = lens _vspVariantSetId
      (\ s a -> s{_vspVariantSetId = a})

-- | OAuth access token.
vspAccessToken :: Lens' VariantSetsPatch (Maybe Text)
vspAccessToken
  = lens _vspAccessToken
      (\ s a -> s{_vspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vspUploadType :: Lens' VariantSetsPatch (Maybe Text)
vspUploadType
  = lens _vspUploadType
      (\ s a -> s{_vspUploadType = a})

-- | Multipart request metadata.
vspPayload :: Lens' VariantSetsPatch VariantSet
vspPayload
  = lens _vspPayload (\ s a -> s{_vspPayload = a})

-- | OAuth bearer token.
vspBearerToken :: Lens' VariantSetsPatch (Maybe Text)
vspBearerToken
  = lens _vspBearerToken
      (\ s a -> s{_vspBearerToken = a})

-- | JSONP
vspCallback :: Lens' VariantSetsPatch (Maybe Text)
vspCallback
  = lens _vspCallback (\ s a -> s{_vspCallback = a})

instance GoogleRequest VariantSetsPatch where
        type Rs VariantSetsPatch = VariantSet
        type Scopes VariantSetsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantSetsPatch'{..}
          = go _vspVariantSetId _vspXgafv _vspUploadProtocol
              _vspUpdateMask
              (Just _vspPp)
              _vspAccessToken
              _vspUploadType
              _vspBearerToken
              _vspCallback
              (Just AltJSON)
              _vspPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantSetsPatchResource)
                      mempty
