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
-- Module      : Network.Google.Resource.Genomics.VariantSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a variant set by ID. For the definitions of variant sets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variantsets.get@.
module Network.Google.Resource.Genomics.VariantSets.Get
    (
    -- * REST Resource
      VariantSetsGetResource

    -- * Creating a Request
    , variantSetsGet
    , VariantSetsGet

    -- * Request Lenses
    , vsgXgafv
    , vsgUploadProtocol
    , vsgPp
    , vsgVariantSetId
    , vsgAccessToken
    , vsgUploadType
    , vsgBearerToken
    , vsgCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.get@ method which the
-- 'VariantSetsGet' request conforms to.
type VariantSetsGetResource =
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

-- | Gets a variant set by ID. For the definitions of variant sets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'variantSetsGet' smart constructor.
data VariantSetsGet = VariantSetsGet
    { _vsgXgafv          :: !(Maybe Text)
    , _vsgUploadProtocol :: !(Maybe Text)
    , _vsgPp             :: !Bool
    , _vsgVariantSetId   :: !Text
    , _vsgAccessToken    :: !(Maybe Text)
    , _vsgUploadType     :: !(Maybe Text)
    , _vsgBearerToken    :: !(Maybe Text)
    , _vsgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsgXgafv'
--
-- * 'vsgUploadProtocol'
--
-- * 'vsgPp'
--
-- * 'vsgVariantSetId'
--
-- * 'vsgAccessToken'
--
-- * 'vsgUploadType'
--
-- * 'vsgBearerToken'
--
-- * 'vsgCallback'
variantSetsGet
    :: Text -- ^ 'vsgVariantSetId'
    -> VariantSetsGet
variantSetsGet pVsgVariantSetId_ =
    VariantSetsGet
    { _vsgXgafv = Nothing
    , _vsgUploadProtocol = Nothing
    , _vsgPp = True
    , _vsgVariantSetId = pVsgVariantSetId_
    , _vsgAccessToken = Nothing
    , _vsgUploadType = Nothing
    , _vsgBearerToken = Nothing
    , _vsgCallback = Nothing
    }

-- | V1 error format.
vsgXgafv :: Lens' VariantSetsGet (Maybe Text)
vsgXgafv = lens _vsgXgafv (\ s a -> s{_vsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vsgUploadProtocol :: Lens' VariantSetsGet (Maybe Text)
vsgUploadProtocol
  = lens _vsgUploadProtocol
      (\ s a -> s{_vsgUploadProtocol = a})

-- | Pretty-print response.
vsgPp :: Lens' VariantSetsGet Bool
vsgPp = lens _vsgPp (\ s a -> s{_vsgPp = a})

-- | Required. The ID of the variant set.
vsgVariantSetId :: Lens' VariantSetsGet Text
vsgVariantSetId
  = lens _vsgVariantSetId
      (\ s a -> s{_vsgVariantSetId = a})

-- | OAuth access token.
vsgAccessToken :: Lens' VariantSetsGet (Maybe Text)
vsgAccessToken
  = lens _vsgAccessToken
      (\ s a -> s{_vsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vsgUploadType :: Lens' VariantSetsGet (Maybe Text)
vsgUploadType
  = lens _vsgUploadType
      (\ s a -> s{_vsgUploadType = a})

-- | OAuth bearer token.
vsgBearerToken :: Lens' VariantSetsGet (Maybe Text)
vsgBearerToken
  = lens _vsgBearerToken
      (\ s a -> s{_vsgBearerToken = a})

-- | JSONP
vsgCallback :: Lens' VariantSetsGet (Maybe Text)
vsgCallback
  = lens _vsgCallback (\ s a -> s{_vsgCallback = a})

instance GoogleRequest VariantSetsGet where
        type Rs VariantSetsGet = VariantSet
        type Scopes VariantSetsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics",
               "https://www.googleapis.com/auth/genomics.readonly"]
        requestClient VariantSetsGet{..}
          = go _vsgVariantSetId _vsgXgafv _vsgUploadProtocol
              (Just _vsgPp)
              _vsgAccessToken
              _vsgUploadType
              _vsgBearerToken
              _vsgCallback
              (Just AltJSON)
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy VariantSetsGetResource)
                      mempty
