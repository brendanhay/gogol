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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new directory site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.directorySites.insert@.
module Network.Google.Resource.DFAReporting.DirectorySites.Insert
    (
    -- * REST Resource
      DirectorySitesInsertResource

    -- * Creating a Request
    , directorySitesInsert
    , DirectorySitesInsert

    -- * Request Lenses
    , dsiXgafv
    , dsiUploadProtocol
    , dsiAccessToken
    , dsiUploadType
    , dsiProFileId
    , dsiPayload
    , dsiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.directorySites.insert@ method which the
-- 'DirectorySitesInsert' request conforms to.
type DirectorySitesInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "directorySites" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DirectorySite :>
                             Post '[JSON] DirectorySite

-- | Inserts a new directory site.
--
-- /See:/ 'directorySitesInsert' smart constructor.
data DirectorySitesInsert =
  DirectorySitesInsert'
    { _dsiXgafv :: !(Maybe Xgafv)
    , _dsiUploadProtocol :: !(Maybe Text)
    , _dsiAccessToken :: !(Maybe Text)
    , _dsiUploadType :: !(Maybe Text)
    , _dsiProFileId :: !(Textual Int64)
    , _dsiPayload :: !DirectorySite
    , _dsiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DirectorySitesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiXgafv'
--
-- * 'dsiUploadProtocol'
--
-- * 'dsiAccessToken'
--
-- * 'dsiUploadType'
--
-- * 'dsiProFileId'
--
-- * 'dsiPayload'
--
-- * 'dsiCallback'
directorySitesInsert
    :: Int64 -- ^ 'dsiProFileId'
    -> DirectorySite -- ^ 'dsiPayload'
    -> DirectorySitesInsert
directorySitesInsert pDsiProFileId_ pDsiPayload_ =
  DirectorySitesInsert'
    { _dsiXgafv = Nothing
    , _dsiUploadProtocol = Nothing
    , _dsiAccessToken = Nothing
    , _dsiUploadType = Nothing
    , _dsiProFileId = _Coerce # pDsiProFileId_
    , _dsiPayload = pDsiPayload_
    , _dsiCallback = Nothing
    }


-- | V1 error format.
dsiXgafv :: Lens' DirectorySitesInsert (Maybe Xgafv)
dsiXgafv = lens _dsiXgafv (\ s a -> s{_dsiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsiUploadProtocol :: Lens' DirectorySitesInsert (Maybe Text)
dsiUploadProtocol
  = lens _dsiUploadProtocol
      (\ s a -> s{_dsiUploadProtocol = a})

-- | OAuth access token.
dsiAccessToken :: Lens' DirectorySitesInsert (Maybe Text)
dsiAccessToken
  = lens _dsiAccessToken
      (\ s a -> s{_dsiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsiUploadType :: Lens' DirectorySitesInsert (Maybe Text)
dsiUploadType
  = lens _dsiUploadType
      (\ s a -> s{_dsiUploadType = a})

-- | User profile ID associated with this request.
dsiProFileId :: Lens' DirectorySitesInsert Int64
dsiProFileId
  = lens _dsiProFileId (\ s a -> s{_dsiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
dsiPayload :: Lens' DirectorySitesInsert DirectorySite
dsiPayload
  = lens _dsiPayload (\ s a -> s{_dsiPayload = a})

-- | JSONP
dsiCallback :: Lens' DirectorySitesInsert (Maybe Text)
dsiCallback
  = lens _dsiCallback (\ s a -> s{_dsiCallback = a})

instance GoogleRequest DirectorySitesInsert where
        type Rs DirectorySitesInsert = DirectorySite
        type Scopes DirectorySitesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DirectorySitesInsert'{..}
          = go _dsiProFileId _dsiXgafv _dsiUploadProtocol
              _dsiAccessToken
              _dsiUploadType
              _dsiCallback
              (Just AltJSON)
              _dsiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DirectorySitesInsertResource)
                      mempty
