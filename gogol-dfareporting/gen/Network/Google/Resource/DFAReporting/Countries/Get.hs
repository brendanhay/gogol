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
-- Module      : Network.Google.Resource.DFAReporting.Countries.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one country by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.countries.get@.
module Network.Google.Resource.DFAReporting.Countries.Get
    (
    -- * REST Resource
      CountriesGetResource

    -- * Creating a Request
    , countriesGet
    , CountriesGet

    -- * Request Lenses
    , cgXgafv
    , cgUploadProtocol
    , cgAccessToken
    , cgUploadType
    , cgProFileId
    , cgDartId
    , cgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.countries.get@ method which the
-- 'CountriesGet' request conforms to.
type CountriesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "countries" :>
               Capture "dartId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Country

-- | Gets one country by ID.
--
-- /See:/ 'countriesGet' smart constructor.
data CountriesGet =
  CountriesGet'
    { _cgXgafv :: !(Maybe Xgafv)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgAccessToken :: !(Maybe Text)
    , _cgUploadType :: !(Maybe Text)
    , _cgProFileId :: !(Textual Int64)
    , _cgDartId :: !(Textual Int64)
    , _cgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CountriesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgUploadProtocol'
--
-- * 'cgAccessToken'
--
-- * 'cgUploadType'
--
-- * 'cgProFileId'
--
-- * 'cgDartId'
--
-- * 'cgCallback'
countriesGet
    :: Int64 -- ^ 'cgProFileId'
    -> Int64 -- ^ 'cgDartId'
    -> CountriesGet
countriesGet pCgProFileId_ pCgDartId_ =
  CountriesGet'
    { _cgXgafv = Nothing
    , _cgUploadProtocol = Nothing
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgProFileId = _Coerce # pCgProFileId_
    , _cgDartId = _Coerce # pCgDartId_
    , _cgCallback = Nothing
    }


-- | V1 error format.
cgXgafv :: Lens' CountriesGet (Maybe Xgafv)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CountriesGet (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | OAuth access token.
cgAccessToken :: Lens' CountriesGet (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CountriesGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | User profile ID associated with this request.
cgProFileId :: Lens' CountriesGet Int64
cgProFileId
  = lens _cgProFileId (\ s a -> s{_cgProFileId = a}) .
      _Coerce

-- | Country DART ID.
cgDartId :: Lens' CountriesGet Int64
cgDartId
  = lens _cgDartId (\ s a -> s{_cgDartId = a}) .
      _Coerce

-- | JSONP
cgCallback :: Lens' CountriesGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest CountriesGet where
        type Rs CountriesGet = Country
        type Scopes CountriesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CountriesGet'{..}
          = go _cgProFileId _cgDartId _cgXgafv
              _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CountriesGetResource)
                      mempty
