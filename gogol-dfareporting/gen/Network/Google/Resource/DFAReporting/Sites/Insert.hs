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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.sites.insert@.
module Network.Google.Resource.DFAReporting.Sites.Insert
    (
    -- * REST Resource
      SitesInsertResource

    -- * Creating a Request
    , sitesInsert
    , SitesInsert

    -- * Request Lenses
    , sXgafv
    , sUploadProtocol
    , sAccessToken
    , sUploadType
    , sProFileId
    , sPayload
    , sCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.sites.insert@ method which the
-- 'SitesInsert' request conforms to.
type SitesInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sites" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Site :> Post '[JSON] Site

-- | Inserts a new site.
--
-- /See:/ 'sitesInsert' smart constructor.
data SitesInsert =
  SitesInsert'
    { _sXgafv :: !(Maybe Xgafv)
    , _sUploadProtocol :: !(Maybe Text)
    , _sAccessToken :: !(Maybe Text)
    , _sUploadType :: !(Maybe Text)
    , _sProFileId :: !(Textual Int64)
    , _sPayload :: !Site
    , _sCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sXgafv'
--
-- * 'sUploadProtocol'
--
-- * 'sAccessToken'
--
-- * 'sUploadType'
--
-- * 'sProFileId'
--
-- * 'sPayload'
--
-- * 'sCallback'
sitesInsert
    :: Int64 -- ^ 'sProFileId'
    -> Site -- ^ 'sPayload'
    -> SitesInsert
sitesInsert pSProFileId_ pSPayload_ =
  SitesInsert'
    { _sXgafv = Nothing
    , _sUploadProtocol = Nothing
    , _sAccessToken = Nothing
    , _sUploadType = Nothing
    , _sProFileId = _Coerce # pSProFileId_
    , _sPayload = pSPayload_
    , _sCallback = Nothing
    }


-- | V1 error format.
sXgafv :: Lens' SitesInsert (Maybe Xgafv)
sXgafv = lens _sXgafv (\ s a -> s{_sXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sUploadProtocol :: Lens' SitesInsert (Maybe Text)
sUploadProtocol
  = lens _sUploadProtocol
      (\ s a -> s{_sUploadProtocol = a})

-- | OAuth access token.
sAccessToken :: Lens' SitesInsert (Maybe Text)
sAccessToken
  = lens _sAccessToken (\ s a -> s{_sAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sUploadType :: Lens' SitesInsert (Maybe Text)
sUploadType
  = lens _sUploadType (\ s a -> s{_sUploadType = a})

-- | User profile ID associated with this request.
sProFileId :: Lens' SitesInsert Int64
sProFileId
  = lens _sProFileId (\ s a -> s{_sProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
sPayload :: Lens' SitesInsert Site
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

-- | JSONP
sCallback :: Lens' SitesInsert (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest SitesInsert where
        type Rs SitesInsert = Site
        type Scopes SitesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SitesInsert'{..}
          = go _sProFileId _sXgafv _sUploadProtocol
              _sAccessToken
              _sUploadType
              _sCallback
              (Just AltJSON)
              _sPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesInsertResource)
                      mempty
