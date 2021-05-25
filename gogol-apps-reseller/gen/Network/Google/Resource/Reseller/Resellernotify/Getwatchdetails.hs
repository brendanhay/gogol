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
-- Module      : Network.Google.Resource.Reseller.Resellernotify.Getwatchdetails
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all the details of the watch corresponding to the reseller.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.resellernotify.getwatchdetails@.
module Network.Google.Resource.Reseller.Resellernotify.Getwatchdetails
    (
    -- * REST Resource
      ResellernotifyGetwatchdetailsResource

    -- * Creating a Request
    , resellernotifyGetwatchdetails
    , ResellernotifyGetwatchdetails

    -- * Request Lenses
    , rgXgafv
    , rgUploadProtocol
    , rgAccessToken
    , rgUploadType
    , rgCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.resellernotify.getwatchdetails@ method which the
-- 'ResellernotifyGetwatchdetails' request conforms to.
type ResellernotifyGetwatchdetailsResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "resellernotify" :>
             "getwatchdetails" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ResellernotifyGetwatchdetailsResponse

-- | Returns all the details of the watch corresponding to the reseller.
--
-- /See:/ 'resellernotifyGetwatchdetails' smart constructor.
data ResellernotifyGetwatchdetails =
  ResellernotifyGetwatchdetails'
    { _rgXgafv :: !(Maybe Xgafv)
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgAccessToken :: !(Maybe Text)
    , _rgUploadType :: !(Maybe Text)
    , _rgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResellernotifyGetwatchdetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgUploadProtocol'
--
-- * 'rgAccessToken'
--
-- * 'rgUploadType'
--
-- * 'rgCallback'
resellernotifyGetwatchdetails
    :: ResellernotifyGetwatchdetails
resellernotifyGetwatchdetails =
  ResellernotifyGetwatchdetails'
    { _rgXgafv = Nothing
    , _rgUploadProtocol = Nothing
    , _rgAccessToken = Nothing
    , _rgUploadType = Nothing
    , _rgCallback = Nothing
    }


-- | V1 error format.
rgXgafv :: Lens' ResellernotifyGetwatchdetails (Maybe Xgafv)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' ResellernotifyGetwatchdetails (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | OAuth access token.
rgAccessToken :: Lens' ResellernotifyGetwatchdetails (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' ResellernotifyGetwatchdetails (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | JSONP
rgCallback :: Lens' ResellernotifyGetwatchdetails (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleRequest ResellernotifyGetwatchdetails
         where
        type Rs ResellernotifyGetwatchdetails =
             ResellernotifyGetwatchdetailsResponse
        type Scopes ResellernotifyGetwatchdetails =
             '["https://www.googleapis.com/auth/apps.order",
               "https://www.googleapis.com/auth/apps.order.readonly"]
        requestClient ResellernotifyGetwatchdetails'{..}
          = go _rgXgafv _rgUploadProtocol _rgAccessToken
              _rgUploadType
              _rgCallback
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ResellernotifyGetwatchdetailsResource)
                      mempty
