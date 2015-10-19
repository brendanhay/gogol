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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a variant set. This method supports patch semantics.
--
-- /See:/ < Genomics API Reference> for @genomics.variantsets.patch@.
module Network.Google.Resource.Genomics.Variantsets.Patch
    (
    -- * REST Resource
      VariantsetsPatchResource

    -- * Creating a Request
    , variantsetsPatch'
    , VariantsetsPatch'

    -- * Request Lenses
    , vpXgafv
    , vpUploadProtocol
    , vpUpdateMask
    , vpPp
    , vpVariantSetId
    , vpAccessToken
    , vpUploadType
    , vpPayload
    , vpBearerToken
    , vpCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.patch@ method which the
-- 'VariantsetsPatch'' request conforms to.
type VariantsetsPatchResource =
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

-- | Updates a variant set. This method supports patch semantics.
--
-- /See:/ 'variantsetsPatch'' smart constructor.
data VariantsetsPatch' = VariantsetsPatch'
    { _vpXgafv          :: !(Maybe Text)
    , _vpUploadProtocol :: !(Maybe Text)
    , _vpUpdateMask     :: !(Maybe Text)
    , _vpPp             :: !Bool
    , _vpVariantSetId   :: !Text
    , _vpAccessToken    :: !(Maybe Text)
    , _vpUploadType     :: !(Maybe Text)
    , _vpPayload        :: !VariantSet
    , _vpBearerToken    :: !(Maybe Text)
    , _vpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpXgafv'
--
-- * 'vpUploadProtocol'
--
-- * 'vpUpdateMask'
--
-- * 'vpPp'
--
-- * 'vpVariantSetId'
--
-- * 'vpAccessToken'
--
-- * 'vpUploadType'
--
-- * 'vpPayload'
--
-- * 'vpBearerToken'
--
-- * 'vpCallback'
variantsetsPatch'
    :: Text -- ^ 'vpVariantSetId'
    -> VariantSet -- ^ 'vpPayload'
    -> VariantsetsPatch'
variantsetsPatch' pVpVariantSetId_ pVpPayload_ =
    VariantsetsPatch'
    { _vpXgafv = Nothing
    , _vpUploadProtocol = Nothing
    , _vpUpdateMask = Nothing
    , _vpPp = True
    , _vpVariantSetId = pVpVariantSetId_
    , _vpAccessToken = Nothing
    , _vpUploadType = Nothing
    , _vpPayload = pVpPayload_
    , _vpBearerToken = Nothing
    , _vpCallback = Nothing
    }

-- | V1 error format.
vpXgafv :: Lens' VariantsetsPatch' (Maybe Text)
vpXgafv = lens _vpXgafv (\ s a -> s{_vpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vpUploadProtocol :: Lens' VariantsetsPatch' (Maybe Text)
vpUploadProtocol
  = lens _vpUploadProtocol
      (\ s a -> s{_vpUploadProtocol = a})

-- | An optional mask specifying which fields to update. At this time, the
-- only mutable field is metadata. The only acceptable value is
-- \"metadata\". If unspecified, all mutable fields will be updated.
vpUpdateMask :: Lens' VariantsetsPatch' (Maybe Text)
vpUpdateMask
  = lens _vpUpdateMask (\ s a -> s{_vpUpdateMask = a})

-- | Pretty-print response.
vpPp :: Lens' VariantsetsPatch' Bool
vpPp = lens _vpPp (\ s a -> s{_vpPp = a})

-- | The ID of the variant to be updated (must already exist).
vpVariantSetId :: Lens' VariantsetsPatch' Text
vpVariantSetId
  = lens _vpVariantSetId
      (\ s a -> s{_vpVariantSetId = a})

-- | OAuth access token.
vpAccessToken :: Lens' VariantsetsPatch' (Maybe Text)
vpAccessToken
  = lens _vpAccessToken
      (\ s a -> s{_vpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vpUploadType :: Lens' VariantsetsPatch' (Maybe Text)
vpUploadType
  = lens _vpUploadType (\ s a -> s{_vpUploadType = a})

-- | Multipart request metadata.
vpPayload :: Lens' VariantsetsPatch' VariantSet
vpPayload
  = lens _vpPayload (\ s a -> s{_vpPayload = a})

-- | OAuth bearer token.
vpBearerToken :: Lens' VariantsetsPatch' (Maybe Text)
vpBearerToken
  = lens _vpBearerToken
      (\ s a -> s{_vpBearerToken = a})

-- | JSONP
vpCallback :: Lens' VariantsetsPatch' (Maybe Text)
vpCallback
  = lens _vpCallback (\ s a -> s{_vpCallback = a})

instance GoogleRequest VariantsetsPatch' where
        type Rs VariantsetsPatch' = VariantSet
        requestClient VariantsetsPatch'{..}
          = go _vpVariantSetId _vpXgafv _vpUploadProtocol
              _vpUpdateMask
              (Just _vpPp)
              _vpAccessToken
              _vpUploadType
              _vpBearerToken
              _vpCallback
              (Just AltJSON)
              _vpPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantsetsPatchResource)
                      mempty
