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
-- Module      : Network.Google.Resource.DoubleClickSearch.SavedColumns.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.savedColumns.list@.
module Network.Google.Resource.DoubleClickSearch.SavedColumns.List
    (
    -- * REST Resource
      SavedColumnsListResource

    -- * Creating a Request
    , savedColumnsList
    , SavedColumnsList

    -- * Request Lenses
    , sclXgafv
    , sclAgencyId
    , sclUploadProtocol
    , sclAccessToken
    , sclAdvertiserId
    , sclUploadType
    , sclCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.savedColumns.list@ method which the
-- 'SavedColumnsList' request conforms to.
type SavedColumnsListResource =
     "doubleclicksearch" :>
       "v2" :>
         "agency" :>
           Capture "agencyId" (Textual Int64) :>
             "advertiser" :>
               Capture "advertiserId" (Textual Int64) :>
                 "savedcolumns" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] SavedColumnList

-- | Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ 'savedColumnsList' smart constructor.
data SavedColumnsList =
  SavedColumnsList'
    { _sclXgafv :: !(Maybe Xgafv)
    , _sclAgencyId :: !(Textual Int64)
    , _sclUploadProtocol :: !(Maybe Text)
    , _sclAccessToken :: !(Maybe Text)
    , _sclAdvertiserId :: !(Textual Int64)
    , _sclUploadType :: !(Maybe Text)
    , _sclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavedColumnsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclXgafv'
--
-- * 'sclAgencyId'
--
-- * 'sclUploadProtocol'
--
-- * 'sclAccessToken'
--
-- * 'sclAdvertiserId'
--
-- * 'sclUploadType'
--
-- * 'sclCallback'
savedColumnsList
    :: Int64 -- ^ 'sclAgencyId'
    -> Int64 -- ^ 'sclAdvertiserId'
    -> SavedColumnsList
savedColumnsList pSclAgencyId_ pSclAdvertiserId_ =
  SavedColumnsList'
    { _sclXgafv = Nothing
    , _sclAgencyId = _Coerce # pSclAgencyId_
    , _sclUploadProtocol = Nothing
    , _sclAccessToken = Nothing
    , _sclAdvertiserId = _Coerce # pSclAdvertiserId_
    , _sclUploadType = Nothing
    , _sclCallback = Nothing
    }


-- | V1 error format.
sclXgafv :: Lens' SavedColumnsList (Maybe Xgafv)
sclXgafv = lens _sclXgafv (\ s a -> s{_sclXgafv = a})

-- | DS ID of the agency.
sclAgencyId :: Lens' SavedColumnsList Int64
sclAgencyId
  = lens _sclAgencyId (\ s a -> s{_sclAgencyId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sclUploadProtocol :: Lens' SavedColumnsList (Maybe Text)
sclUploadProtocol
  = lens _sclUploadProtocol
      (\ s a -> s{_sclUploadProtocol = a})

-- | OAuth access token.
sclAccessToken :: Lens' SavedColumnsList (Maybe Text)
sclAccessToken
  = lens _sclAccessToken
      (\ s a -> s{_sclAccessToken = a})

-- | DS ID of the advertiser.
sclAdvertiserId :: Lens' SavedColumnsList Int64
sclAdvertiserId
  = lens _sclAdvertiserId
      (\ s a -> s{_sclAdvertiserId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sclUploadType :: Lens' SavedColumnsList (Maybe Text)
sclUploadType
  = lens _sclUploadType
      (\ s a -> s{_sclUploadType = a})

-- | JSONP
sclCallback :: Lens' SavedColumnsList (Maybe Text)
sclCallback
  = lens _sclCallback (\ s a -> s{_sclCallback = a})

instance GoogleRequest SavedColumnsList where
        type Rs SavedColumnsList = SavedColumnList
        type Scopes SavedColumnsList =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient SavedColumnsList'{..}
          = go _sclAgencyId _sclAdvertiserId _sclXgafv
              _sclUploadProtocol
              _sclAccessToken
              _sclUploadType
              _sclCallback
              (Just AltJSON)
              doubleClickSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SavedColumnsListResource)
                      mempty
