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
-- Module      : Network.Google.Resource.Genomics.DataSets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new dataset. For the definitions of datasets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.datasets.create@.
module Network.Google.Resource.Genomics.DataSets.Create
    (
    -- * REST Resource
      DataSetsCreateResource

    -- * Creating a Request
    , dataSetsCreate
    , DataSetsCreate

    -- * Request Lenses
    , dscXgafv
    , dscUploadProtocol
    , dscPp
    , dscAccessToken
    , dscUploadType
    , dscPayload
    , dscBearerToken
    , dscCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.datasets.create@ method which the
-- 'DataSetsCreate' request conforms to.
type DataSetsCreateResource =
     "v1" :>
       "datasets" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DataSet :> Post '[JSON] DataSet

-- | Creates a new dataset. For the definitions of datasets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'dataSetsCreate' smart constructor.
data DataSetsCreate = DataSetsCreate
    { _dscXgafv          :: !(Maybe Text)
    , _dscUploadProtocol :: !(Maybe Text)
    , _dscPp             :: !Bool
    , _dscAccessToken    :: !(Maybe Text)
    , _dscUploadType     :: !(Maybe Text)
    , _dscPayload        :: !DataSet
    , _dscBearerToken    :: !(Maybe Text)
    , _dscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscXgafv'
--
-- * 'dscUploadProtocol'
--
-- * 'dscPp'
--
-- * 'dscAccessToken'
--
-- * 'dscUploadType'
--
-- * 'dscPayload'
--
-- * 'dscBearerToken'
--
-- * 'dscCallback'
dataSetsCreate
    :: DataSet -- ^ 'dscPayload'
    -> DataSetsCreate
dataSetsCreate pDscPayload_ =
    DataSetsCreate
    { _dscXgafv = Nothing
    , _dscUploadProtocol = Nothing
    , _dscPp = True
    , _dscAccessToken = Nothing
    , _dscUploadType = Nothing
    , _dscPayload = pDscPayload_
    , _dscBearerToken = Nothing
    , _dscCallback = Nothing
    }

-- | V1 error format.
dscXgafv :: Lens' DataSetsCreate (Maybe Text)
dscXgafv = lens _dscXgafv (\ s a -> s{_dscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dscUploadProtocol :: Lens' DataSetsCreate (Maybe Text)
dscUploadProtocol
  = lens _dscUploadProtocol
      (\ s a -> s{_dscUploadProtocol = a})

-- | Pretty-print response.
dscPp :: Lens' DataSetsCreate Bool
dscPp = lens _dscPp (\ s a -> s{_dscPp = a})

-- | OAuth access token.
dscAccessToken :: Lens' DataSetsCreate (Maybe Text)
dscAccessToken
  = lens _dscAccessToken
      (\ s a -> s{_dscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dscUploadType :: Lens' DataSetsCreate (Maybe Text)
dscUploadType
  = lens _dscUploadType
      (\ s a -> s{_dscUploadType = a})

-- | Multipart request metadata.
dscPayload :: Lens' DataSetsCreate DataSet
dscPayload
  = lens _dscPayload (\ s a -> s{_dscPayload = a})

-- | OAuth bearer token.
dscBearerToken :: Lens' DataSetsCreate (Maybe Text)
dscBearerToken
  = lens _dscBearerToken
      (\ s a -> s{_dscBearerToken = a})

-- | JSONP
dscCallback :: Lens' DataSetsCreate (Maybe Text)
dscCallback
  = lens _dscCallback (\ s a -> s{_dscCallback = a})

instance GoogleRequest DataSetsCreate where
        type Rs DataSetsCreate = DataSet
        requestClient DataSetsCreate{..}
          = go _dscXgafv _dscUploadProtocol (Just _dscPp)
              _dscAccessToken
              _dscUploadType
              _dscBearerToken
              _dscCallback
              (Just AltJSON)
              _dscPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy DataSetsCreateResource)
                      mempty
