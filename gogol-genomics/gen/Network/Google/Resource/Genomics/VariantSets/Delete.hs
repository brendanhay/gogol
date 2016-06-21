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
-- Module      : Network.Google.Resource.Genomics.VariantSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a variant set including all variants, call sets, and calls
-- within. This is not reversible. For the definitions of variant sets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variantsets.delete@.
module Network.Google.Resource.Genomics.VariantSets.Delete
    (
    -- * REST Resource
      VariantSetsDeleteResource

    -- * Creating a Request
    , variantSetsDelete
    , VariantSetsDelete

    -- * Request Lenses
    , vsdXgafv
    , vsdUploadProtocol
    , vsdPp
    , vsdVariantSetId
    , vsdAccessToken
    , vsdUploadType
    , vsdBearerToken
    , vsdCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.delete@ method which the
-- 'VariantSetsDelete' request conforms to.
type VariantSetsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a variant set including all variants, call sets, and calls
-- within. This is not reversible. For the definitions of variant sets and
-- other genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'variantSetsDelete' smart constructor.
data VariantSetsDelete = VariantSetsDelete'
    { _vsdXgafv          :: !(Maybe Text)
    , _vsdUploadProtocol :: !(Maybe Text)
    , _vsdPp             :: !Bool
    , _vsdVariantSetId   :: !Text
    , _vsdAccessToken    :: !(Maybe Text)
    , _vsdUploadType     :: !(Maybe Text)
    , _vsdBearerToken    :: !(Maybe Text)
    , _vsdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsdXgafv'
--
-- * 'vsdUploadProtocol'
--
-- * 'vsdPp'
--
-- * 'vsdVariantSetId'
--
-- * 'vsdAccessToken'
--
-- * 'vsdUploadType'
--
-- * 'vsdBearerToken'
--
-- * 'vsdCallback'
variantSetsDelete
    :: Text -- ^ 'vsdVariantSetId'
    -> VariantSetsDelete
variantSetsDelete pVsdVariantSetId_ =
    VariantSetsDelete'
    { _vsdXgafv = Nothing
    , _vsdUploadProtocol = Nothing
    , _vsdPp = True
    , _vsdVariantSetId = pVsdVariantSetId_
    , _vsdAccessToken = Nothing
    , _vsdUploadType = Nothing
    , _vsdBearerToken = Nothing
    , _vsdCallback = Nothing
    }

-- | V1 error format.
vsdXgafv :: Lens' VariantSetsDelete (Maybe Text)
vsdXgafv = lens _vsdXgafv (\ s a -> s{_vsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vsdUploadProtocol :: Lens' VariantSetsDelete (Maybe Text)
vsdUploadProtocol
  = lens _vsdUploadProtocol
      (\ s a -> s{_vsdUploadProtocol = a})

-- | Pretty-print response.
vsdPp :: Lens' VariantSetsDelete Bool
vsdPp = lens _vsdPp (\ s a -> s{_vsdPp = a})

-- | The ID of the variant set to be deleted.
vsdVariantSetId :: Lens' VariantSetsDelete Text
vsdVariantSetId
  = lens _vsdVariantSetId
      (\ s a -> s{_vsdVariantSetId = a})

-- | OAuth access token.
vsdAccessToken :: Lens' VariantSetsDelete (Maybe Text)
vsdAccessToken
  = lens _vsdAccessToken
      (\ s a -> s{_vsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vsdUploadType :: Lens' VariantSetsDelete (Maybe Text)
vsdUploadType
  = lens _vsdUploadType
      (\ s a -> s{_vsdUploadType = a})

-- | OAuth bearer token.
vsdBearerToken :: Lens' VariantSetsDelete (Maybe Text)
vsdBearerToken
  = lens _vsdBearerToken
      (\ s a -> s{_vsdBearerToken = a})

-- | JSONP
vsdCallback :: Lens' VariantSetsDelete (Maybe Text)
vsdCallback
  = lens _vsdCallback (\ s a -> s{_vsdCallback = a})

instance GoogleRequest VariantSetsDelete where
        type Rs VariantSetsDelete = Empty
        type Scopes VariantSetsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantSetsDelete'{..}
          = go _vsdVariantSetId _vsdXgafv _vsdUploadProtocol
              (Just _vsdPp)
              _vsdAccessToken
              _vsdUploadType
              _vsdBearerToken
              _vsdCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantSetsDeleteResource)
                      mempty
