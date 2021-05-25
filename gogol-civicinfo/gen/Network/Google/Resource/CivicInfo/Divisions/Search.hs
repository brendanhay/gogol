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
-- Module      : Network.Google.Resource.CivicInfo.Divisions.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.divisions.search@.
module Network.Google.Resource.CivicInfo.Divisions.Search
    (
    -- * REST Resource
      DivisionsSearchResource

    -- * Creating a Request
    , divisionsSearch
    , DivisionsSearch

    -- * Request Lenses
    , dsXgafv
    , dsUploadProtocol
    , dsAccessToken
    , dsUploadType
    , dsQuery
    , dsCallback
    ) where

import Network.Google.CivicInfo.Types
import Network.Google.Prelude

-- | A resource alias for @civicinfo.divisions.search@ method which the
-- 'DivisionsSearch' request conforms to.
type DivisionsSearchResource =
     "civicinfo" :>
       "v2" :>
         "divisions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "query" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] DivisionSearchResponse

-- | Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ 'divisionsSearch' smart constructor.
data DivisionsSearch =
  DivisionsSearch'
    { _dsXgafv :: !(Maybe Xgafv)
    , _dsUploadProtocol :: !(Maybe Text)
    , _dsAccessToken :: !(Maybe Text)
    , _dsUploadType :: !(Maybe Text)
    , _dsQuery :: !(Maybe Text)
    , _dsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DivisionsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsXgafv'
--
-- * 'dsUploadProtocol'
--
-- * 'dsAccessToken'
--
-- * 'dsUploadType'
--
-- * 'dsQuery'
--
-- * 'dsCallback'
divisionsSearch
    :: DivisionsSearch
divisionsSearch =
  DivisionsSearch'
    { _dsXgafv = Nothing
    , _dsUploadProtocol = Nothing
    , _dsAccessToken = Nothing
    , _dsUploadType = Nothing
    , _dsQuery = Nothing
    , _dsCallback = Nothing
    }


-- | V1 error format.
dsXgafv :: Lens' DivisionsSearch (Maybe Xgafv)
dsXgafv = lens _dsXgafv (\ s a -> s{_dsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsUploadProtocol :: Lens' DivisionsSearch (Maybe Text)
dsUploadProtocol
  = lens _dsUploadProtocol
      (\ s a -> s{_dsUploadProtocol = a})

-- | OAuth access token.
dsAccessToken :: Lens' DivisionsSearch (Maybe Text)
dsAccessToken
  = lens _dsAccessToken
      (\ s a -> s{_dsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsUploadType :: Lens' DivisionsSearch (Maybe Text)
dsUploadType
  = lens _dsUploadType (\ s a -> s{_dsUploadType = a})

-- | The search query. Queries can cover any parts of a OCD ID or a human
-- readable division name. All words given in the query are treated as
-- required patterns. In addition to that, most query operators of the
-- Apache Lucene library are supported. See
-- http:\/\/lucene.apache.org\/core\/2_9_4\/queryparsersyntax.html
dsQuery :: Lens' DivisionsSearch (Maybe Text)
dsQuery = lens _dsQuery (\ s a -> s{_dsQuery = a})

-- | JSONP
dsCallback :: Lens' DivisionsSearch (Maybe Text)
dsCallback
  = lens _dsCallback (\ s a -> s{_dsCallback = a})

instance GoogleRequest DivisionsSearch where
        type Rs DivisionsSearch = DivisionSearchResponse
        type Scopes DivisionsSearch = '[]
        requestClient DivisionsSearch'{..}
          = go _dsXgafv _dsUploadProtocol _dsAccessToken
              _dsUploadType
              _dsQuery
              _dsCallback
              (Just AltJSON)
              civicInfoService
          where go
                  = buildClient
                      (Proxy :: Proxy DivisionsSearchResource)
                      mempty
