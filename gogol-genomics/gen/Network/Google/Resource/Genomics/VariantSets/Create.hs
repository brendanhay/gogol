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
-- Module      : Network.Google.Resource.Genomics.VariantSets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new variant set. For the definitions of variant sets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- The provided variant set must have a valid \`datasetId\` set - all other
-- fields are optional. Note that the \`id\` field will be ignored, as this
-- is assigned by the server.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.variantsets.create@.
module Network.Google.Resource.Genomics.VariantSets.Create
    (
    -- * REST Resource
      VariantSetsCreateResource

    -- * Creating a Request
    , variantSetsCreate
    , VariantSetsCreate

    -- * Request Lenses
    , vscXgafv
    , vscUploadProtocol
    , vscPp
    , vscAccessToken
    , vscUploadType
    , vscPayload
    , vscBearerToken
    , vscCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.variantsets.create@ method which the
-- 'VariantSetsCreate' request conforms to.
type VariantSetsCreateResource =
     "v1" :>
       "variantsets" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] VariantSet :> Post '[JSON] VariantSet

-- | Creates a new variant set. For the definitions of variant sets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
-- The provided variant set must have a valid \`datasetId\` set - all other
-- fields are optional. Note that the \`id\` field will be ignored, as this
-- is assigned by the server.
--
-- /See:/ 'variantSetsCreate' smart constructor.
data VariantSetsCreate = VariantSetsCreate'
    { _vscXgafv          :: !(Maybe Text)
    , _vscUploadProtocol :: !(Maybe Text)
    , _vscPp             :: !Bool
    , _vscAccessToken    :: !(Maybe Text)
    , _vscUploadType     :: !(Maybe Text)
    , _vscPayload        :: !VariantSet
    , _vscBearerToken    :: !(Maybe Text)
    , _vscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vscXgafv'
--
-- * 'vscUploadProtocol'
--
-- * 'vscPp'
--
-- * 'vscAccessToken'
--
-- * 'vscUploadType'
--
-- * 'vscPayload'
--
-- * 'vscBearerToken'
--
-- * 'vscCallback'
variantSetsCreate
    :: VariantSet -- ^ 'vscPayload'
    -> VariantSetsCreate
variantSetsCreate pVscPayload_ =
    VariantSetsCreate'
    { _vscXgafv = Nothing
    , _vscUploadProtocol = Nothing
    , _vscPp = True
    , _vscAccessToken = Nothing
    , _vscUploadType = Nothing
    , _vscPayload = pVscPayload_
    , _vscBearerToken = Nothing
    , _vscCallback = Nothing
    }

-- | V1 error format.
vscXgafv :: Lens' VariantSetsCreate (Maybe Text)
vscXgafv = lens _vscXgafv (\ s a -> s{_vscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vscUploadProtocol :: Lens' VariantSetsCreate (Maybe Text)
vscUploadProtocol
  = lens _vscUploadProtocol
      (\ s a -> s{_vscUploadProtocol = a})

-- | Pretty-print response.
vscPp :: Lens' VariantSetsCreate Bool
vscPp = lens _vscPp (\ s a -> s{_vscPp = a})

-- | OAuth access token.
vscAccessToken :: Lens' VariantSetsCreate (Maybe Text)
vscAccessToken
  = lens _vscAccessToken
      (\ s a -> s{_vscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vscUploadType :: Lens' VariantSetsCreate (Maybe Text)
vscUploadType
  = lens _vscUploadType
      (\ s a -> s{_vscUploadType = a})

-- | Multipart request metadata.
vscPayload :: Lens' VariantSetsCreate VariantSet
vscPayload
  = lens _vscPayload (\ s a -> s{_vscPayload = a})

-- | OAuth bearer token.
vscBearerToken :: Lens' VariantSetsCreate (Maybe Text)
vscBearerToken
  = lens _vscBearerToken
      (\ s a -> s{_vscBearerToken = a})

-- | JSONP
vscCallback :: Lens' VariantSetsCreate (Maybe Text)
vscCallback
  = lens _vscCallback (\ s a -> s{_vscCallback = a})

instance GoogleRequest VariantSetsCreate where
        type Rs VariantSetsCreate = VariantSet
        type Scopes VariantSetsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient VariantSetsCreate'{..}
          = go _vscXgafv _vscUploadProtocol (Just _vscPp)
              _vscAccessToken
              _vscUploadType
              _vscBearerToken
              _vscCallback
              (Just AltJSON)
              _vscPayload
              genomicsService
          where go
                  = buildClient
                      (Proxy :: Proxy VariantSetsCreateResource)
                      mempty
