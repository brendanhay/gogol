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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a variant set by ID.
--
-- /See:/ < Genomics API Reference> for @GenomicsVariantsetsGet@.
module Network.Google.Resource.Genomics.Variantsets.Get
    (
    -- * REST Resource
      VariantsetsGetResource

    -- * Creating a Request
    , variantsetsGet'
    , VariantsetsGet'

    -- * Request Lenses
    , vgXgafv
    , vgUploadProtocol
    , vgPp
    , vgVariantSetId
    , vgAccessToken
    , vgUploadType
    , vgBearerToken
    , vgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsGet@ method which the
-- 'VariantsetsGet'' request conforms to.
type VariantsetsGetResource =
     "v1" :>
       "variantsets" :>
         Capture "variantSetId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] VariantSet

-- | Gets a variant set by ID.
--
-- /See:/ 'variantsetsGet'' smart constructor.
data VariantsetsGet' = VariantsetsGet'
    { _vgXgafv          :: !(Maybe Text)
    , _vgUploadProtocol :: !(Maybe Text)
    , _vgPp             :: !Bool
    , _vgVariantSetId   :: !Text
    , _vgAccessToken    :: !(Maybe Text)
    , _vgUploadType     :: !(Maybe Text)
    , _vgBearerToken    :: !(Maybe Text)
    , _vgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgXgafv'
--
-- * 'vgUploadProtocol'
--
-- * 'vgPp'
--
-- * 'vgVariantSetId'
--
-- * 'vgAccessToken'
--
-- * 'vgUploadType'
--
-- * 'vgBearerToken'
--
-- * 'vgCallback'
variantsetsGet'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsGet'
variantsetsGet' pVgVariantSetId_ =
    VariantsetsGet'
    { _vgXgafv = Nothing
    , _vgUploadProtocol = Nothing
    , _vgPp = True
    , _vgVariantSetId = pVgVariantSetId_
    , _vgAccessToken = Nothing
    , _vgUploadType = Nothing
    , _vgBearerToken = Nothing
    , _vgCallback = Nothing
    }

-- | V1 error format.
vgXgafv :: Lens' VariantsetsGet' (Maybe Text)
vgXgafv = lens _vgXgafv (\ s a -> s{_vgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vgUploadProtocol :: Lens' VariantsetsGet' (Maybe Text)
vgUploadProtocol
  = lens _vgUploadProtocol
      (\ s a -> s{_vgUploadProtocol = a})

-- | Pretty-print response.
vgPp :: Lens' VariantsetsGet' Bool
vgPp = lens _vgPp (\ s a -> s{_vgPp = a})

-- | Required. The ID of the variant set.
vgVariantSetId :: Lens' VariantsetsGet' Text
vgVariantSetId
  = lens _vgVariantSetId
      (\ s a -> s{_vgVariantSetId = a})

-- | OAuth access token.
vgAccessToken :: Lens' VariantsetsGet' (Maybe Text)
vgAccessToken
  = lens _vgAccessToken
      (\ s a -> s{_vgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vgUploadType :: Lens' VariantsetsGet' (Maybe Text)
vgUploadType
  = lens _vgUploadType (\ s a -> s{_vgUploadType = a})

-- | OAuth bearer token.
vgBearerToken :: Lens' VariantsetsGet' (Maybe Text)
vgBearerToken
  = lens _vgBearerToken
      (\ s a -> s{_vgBearerToken = a})

-- | JSONP
vgCallback :: Lens' VariantsetsGet' (Maybe Text)
vgCallback
  = lens _vgCallback (\ s a -> s{_vgCallback = a})

instance GoogleRequest VariantsetsGet' where
        type Rs VariantsetsGet' = VariantSet
        requestClient VariantsetsGet'{..}
          = go _vgVariantSetId _vgXgafv _vgUploadProtocol
              (Just _vgPp)
              _vgAccessToken
              _vgUploadType
              _vgBearerToken
              _vgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantsetsGetResource)
                      mempty
