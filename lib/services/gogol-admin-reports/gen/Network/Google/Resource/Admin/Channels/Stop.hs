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
-- Module      : Network.Google.Resource.Admin.Channels.Stop
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop watching resources through this channel.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.channels.stop@.
module Network.Google.Resource.Admin.Channels.Stop
    (
    -- * REST Resource
      ChannelsStopResource

    -- * Creating a Request
    , channelsStop
    , ChannelsStop

    -- * Request Lenses
    , csXgafv
    , csUploadProtocol
    , csAccessToken
    , csUploadType
    , csPayload
    , csCallback
    ) where

import Network.Google.Prelude
import Network.Google.Reports.Types

-- | A resource alias for @admin.channels.stop@ method which the
-- 'ChannelsStop' request conforms to.
type ChannelsStopResource =
     "admin" :>
       "reports_v1" :>
         "channels" :>
           "stop" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Channel :> Post '[JSON] ()

-- | Stop watching resources through this channel.
--
-- /See:/ 'channelsStop' smart constructor.
data ChannelsStop =
  ChannelsStop'
    { _csXgafv :: !(Maybe Xgafv)
    , _csUploadProtocol :: !(Maybe Text)
    , _csAccessToken :: !(Maybe Text)
    , _csUploadType :: !(Maybe Text)
    , _csPayload :: !Channel
    , _csCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelsStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csXgafv'
--
-- * 'csUploadProtocol'
--
-- * 'csAccessToken'
--
-- * 'csUploadType'
--
-- * 'csPayload'
--
-- * 'csCallback'
channelsStop
    :: Channel -- ^ 'csPayload'
    -> ChannelsStop
channelsStop pCsPayload_ =
  ChannelsStop'
    { _csXgafv = Nothing
    , _csUploadProtocol = Nothing
    , _csAccessToken = Nothing
    , _csUploadType = Nothing
    , _csPayload = pCsPayload_
    , _csCallback = Nothing
    }


-- | V1 error format.
csXgafv :: Lens' ChannelsStop (Maybe Xgafv)
csXgafv = lens _csXgafv (\ s a -> s{_csXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csUploadProtocol :: Lens' ChannelsStop (Maybe Text)
csUploadProtocol
  = lens _csUploadProtocol
      (\ s a -> s{_csUploadProtocol = a})

-- | OAuth access token.
csAccessToken :: Lens' ChannelsStop (Maybe Text)
csAccessToken
  = lens _csAccessToken
      (\ s a -> s{_csAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csUploadType :: Lens' ChannelsStop (Maybe Text)
csUploadType
  = lens _csUploadType (\ s a -> s{_csUploadType = a})

-- | Multipart request metadata.
csPayload :: Lens' ChannelsStop Channel
csPayload
  = lens _csPayload (\ s a -> s{_csPayload = a})

-- | JSONP
csCallback :: Lens' ChannelsStop (Maybe Text)
csCallback
  = lens _csCallback (\ s a -> s{_csCallback = a})

instance GoogleRequest ChannelsStop where
        type Rs ChannelsStop = ()
        type Scopes ChannelsStop =
             '["https://www.googleapis.com/auth/admin.reports.audit.readonly"]
        requestClient ChannelsStop'{..}
          = go _csXgafv _csUploadProtocol _csAccessToken
              _csUploadType
              _csCallback
              (Just AltJSON)
              _csPayload
              reportsService
          where go
                  = buildClient (Proxy :: Proxy ChannelsStopResource)
                      mempty
