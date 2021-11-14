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
-- Module      : Network.Google.Resource.YouTube.AbuseReports.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.abuseReports.insert@.
module Network.Google.Resource.YouTube.AbuseReports.Insert
    (
    -- * REST Resource
      AbuseReportsInsertResource

    -- * Creating a Request
    , abuseReportsInsert
    , AbuseReportsInsert

    -- * Request Lenses
    , ariXgafv
    , ariPart
    , ariUploadProtocol
    , ariAccessToken
    , ariUploadType
    , ariPayload
    , ariCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.abuseReports.insert@ method which the
-- 'AbuseReportsInsert' request conforms to.
type AbuseReportsInsertResource =
     "youtube" :>
       "v3" :>
         "abuseReports" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AbuseReport :>
                           Post '[JSON] AbuseReport

-- | Inserts a new resource into this collection.
--
-- /See:/ 'abuseReportsInsert' smart constructor.
data AbuseReportsInsert =
  AbuseReportsInsert'
    { _ariXgafv :: !(Maybe Xgafv)
    , _ariPart :: ![Text]
    , _ariUploadProtocol :: !(Maybe Text)
    , _ariAccessToken :: !(Maybe Text)
    , _ariUploadType :: !(Maybe Text)
    , _ariPayload :: !AbuseReport
    , _ariCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AbuseReportsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ariXgafv'
--
-- * 'ariPart'
--
-- * 'ariUploadProtocol'
--
-- * 'ariAccessToken'
--
-- * 'ariUploadType'
--
-- * 'ariPayload'
--
-- * 'ariCallback'
abuseReportsInsert
    :: [Text] -- ^ 'ariPart'
    -> AbuseReport -- ^ 'ariPayload'
    -> AbuseReportsInsert
abuseReportsInsert pAriPart_ pAriPayload_ =
  AbuseReportsInsert'
    { _ariXgafv = Nothing
    , _ariPart = _Coerce # pAriPart_
    , _ariUploadProtocol = Nothing
    , _ariAccessToken = Nothing
    , _ariUploadType = Nothing
    , _ariPayload = pAriPayload_
    , _ariCallback = Nothing
    }


-- | V1 error format.
ariXgafv :: Lens' AbuseReportsInsert (Maybe Xgafv)
ariXgafv = lens _ariXgafv (\ s a -> s{_ariXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include.
ariPart :: Lens' AbuseReportsInsert [Text]
ariPart
  = lens _ariPart (\ s a -> s{_ariPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ariUploadProtocol :: Lens' AbuseReportsInsert (Maybe Text)
ariUploadProtocol
  = lens _ariUploadProtocol
      (\ s a -> s{_ariUploadProtocol = a})

-- | OAuth access token.
ariAccessToken :: Lens' AbuseReportsInsert (Maybe Text)
ariAccessToken
  = lens _ariAccessToken
      (\ s a -> s{_ariAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ariUploadType :: Lens' AbuseReportsInsert (Maybe Text)
ariUploadType
  = lens _ariUploadType
      (\ s a -> s{_ariUploadType = a})

-- | Multipart request metadata.
ariPayload :: Lens' AbuseReportsInsert AbuseReport
ariPayload
  = lens _ariPayload (\ s a -> s{_ariPayload = a})

-- | JSONP
ariCallback :: Lens' AbuseReportsInsert (Maybe Text)
ariCallback
  = lens _ariCallback (\ s a -> s{_ariCallback = a})

instance GoogleRequest AbuseReportsInsert where
        type Rs AbuseReportsInsert = AbuseReport
        type Scopes AbuseReportsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient AbuseReportsInsert'{..}
          = go _ariPart _ariXgafv _ariUploadProtocol
              _ariAccessToken
              _ariUploadType
              _ariCallback
              (Just AltJSON)
              _ariPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy AbuseReportsInsertResource)
                      mempty
