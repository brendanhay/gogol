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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.insert@.
module Network.Google.Resource.Directory.Resources.Calendars.Insert
    (
    -- * REST Resource
      ResourcesCalendarsInsertResource

    -- * Creating a Request
    , resourcesCalendarsInsert
    , ResourcesCalendarsInsert

    -- * Request Lenses
    , rciXgafv
    , rciUploadProtocol
    , rciAccessToken
    , rciUploadType
    , rciPayload
    , rciCustomer
    , rciCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.insert@ method which the
-- 'ResourcesCalendarsInsert' request conforms to.
type ResourcesCalendarsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "calendars" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] CalendarResource :>
                                 Post '[JSON] CalendarResource

-- | Inserts a calendar resource.
--
-- /See:/ 'resourcesCalendarsInsert' smart constructor.
data ResourcesCalendarsInsert =
  ResourcesCalendarsInsert'
    { _rciXgafv :: !(Maybe Xgafv)
    , _rciUploadProtocol :: !(Maybe Text)
    , _rciAccessToken :: !(Maybe Text)
    , _rciUploadType :: !(Maybe Text)
    , _rciPayload :: !CalendarResource
    , _rciCustomer :: !Text
    , _rciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesCalendarsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rciXgafv'
--
-- * 'rciUploadProtocol'
--
-- * 'rciAccessToken'
--
-- * 'rciUploadType'
--
-- * 'rciPayload'
--
-- * 'rciCustomer'
--
-- * 'rciCallback'
resourcesCalendarsInsert
    :: CalendarResource -- ^ 'rciPayload'
    -> Text -- ^ 'rciCustomer'
    -> ResourcesCalendarsInsert
resourcesCalendarsInsert pRciPayload_ pRciCustomer_ =
  ResourcesCalendarsInsert'
    { _rciXgafv = Nothing
    , _rciUploadProtocol = Nothing
    , _rciAccessToken = Nothing
    , _rciUploadType = Nothing
    , _rciPayload = pRciPayload_
    , _rciCustomer = pRciCustomer_
    , _rciCallback = Nothing
    }


-- | V1 error format.
rciXgafv :: Lens' ResourcesCalendarsInsert (Maybe Xgafv)
rciXgafv = lens _rciXgafv (\ s a -> s{_rciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rciUploadProtocol :: Lens' ResourcesCalendarsInsert (Maybe Text)
rciUploadProtocol
  = lens _rciUploadProtocol
      (\ s a -> s{_rciUploadProtocol = a})

-- | OAuth access token.
rciAccessToken :: Lens' ResourcesCalendarsInsert (Maybe Text)
rciAccessToken
  = lens _rciAccessToken
      (\ s a -> s{_rciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rciUploadType :: Lens' ResourcesCalendarsInsert (Maybe Text)
rciUploadType
  = lens _rciUploadType
      (\ s a -> s{_rciUploadType = a})

-- | Multipart request metadata.
rciPayload :: Lens' ResourcesCalendarsInsert CalendarResource
rciPayload
  = lens _rciPayload (\ s a -> s{_rciPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rciCustomer :: Lens' ResourcesCalendarsInsert Text
rciCustomer
  = lens _rciCustomer (\ s a -> s{_rciCustomer = a})

-- | JSONP
rciCallback :: Lens' ResourcesCalendarsInsert (Maybe Text)
rciCallback
  = lens _rciCallback (\ s a -> s{_rciCallback = a})

instance GoogleRequest ResourcesCalendarsInsert where
        type Rs ResourcesCalendarsInsert = CalendarResource
        type Scopes ResourcesCalendarsInsert =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesCalendarsInsert'{..}
          = go _rciCustomer _rciXgafv _rciUploadProtocol
              _rciAccessToken
              _rciUploadType
              _rciCallback
              (Just AltJSON)
              _rciPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsInsertResource)
                      mempty
