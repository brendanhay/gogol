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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.get@.
module Network.Google.Resource.Directory.Resources.Calendars.Get
    (
    -- * REST Resource
      ResourcesCalendarsGetResource

    -- * Creating a Request
    , resourcesCalendarsGet
    , ResourcesCalendarsGet

    -- * Request Lenses
    , rcgXgafv
    , rcgUploadProtocol
    , rcgAccessToken
    , rcgUploadType
    , rcgCustomer
    , rcgCalendarResourceId
    , rcgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.get@ method which the
-- 'ResourcesCalendarsGet' request conforms to.
type ResourcesCalendarsGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "calendars" :>
                   Capture "calendarResourceId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CalendarResource

-- | Retrieves a calendar resource.
--
-- /See:/ 'resourcesCalendarsGet' smart constructor.
data ResourcesCalendarsGet =
  ResourcesCalendarsGet'
    { _rcgXgafv :: !(Maybe Xgafv)
    , _rcgUploadProtocol :: !(Maybe Text)
    , _rcgAccessToken :: !(Maybe Text)
    , _rcgUploadType :: !(Maybe Text)
    , _rcgCustomer :: !Text
    , _rcgCalendarResourceId :: !Text
    , _rcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesCalendarsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcgXgafv'
--
-- * 'rcgUploadProtocol'
--
-- * 'rcgAccessToken'
--
-- * 'rcgUploadType'
--
-- * 'rcgCustomer'
--
-- * 'rcgCalendarResourceId'
--
-- * 'rcgCallback'
resourcesCalendarsGet
    :: Text -- ^ 'rcgCustomer'
    -> Text -- ^ 'rcgCalendarResourceId'
    -> ResourcesCalendarsGet
resourcesCalendarsGet pRcgCustomer_ pRcgCalendarResourceId_ =
  ResourcesCalendarsGet'
    { _rcgXgafv = Nothing
    , _rcgUploadProtocol = Nothing
    , _rcgAccessToken = Nothing
    , _rcgUploadType = Nothing
    , _rcgCustomer = pRcgCustomer_
    , _rcgCalendarResourceId = pRcgCalendarResourceId_
    , _rcgCallback = Nothing
    }


-- | V1 error format.
rcgXgafv :: Lens' ResourcesCalendarsGet (Maybe Xgafv)
rcgXgafv = lens _rcgXgafv (\ s a -> s{_rcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcgUploadProtocol :: Lens' ResourcesCalendarsGet (Maybe Text)
rcgUploadProtocol
  = lens _rcgUploadProtocol
      (\ s a -> s{_rcgUploadProtocol = a})

-- | OAuth access token.
rcgAccessToken :: Lens' ResourcesCalendarsGet (Maybe Text)
rcgAccessToken
  = lens _rcgAccessToken
      (\ s a -> s{_rcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcgUploadType :: Lens' ResourcesCalendarsGet (Maybe Text)
rcgUploadType
  = lens _rcgUploadType
      (\ s a -> s{_rcgUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rcgCustomer :: Lens' ResourcesCalendarsGet Text
rcgCustomer
  = lens _rcgCustomer (\ s a -> s{_rcgCustomer = a})

-- | The unique ID of the calendar resource to retrieve.
rcgCalendarResourceId :: Lens' ResourcesCalendarsGet Text
rcgCalendarResourceId
  = lens _rcgCalendarResourceId
      (\ s a -> s{_rcgCalendarResourceId = a})

-- | JSONP
rcgCallback :: Lens' ResourcesCalendarsGet (Maybe Text)
rcgCallback
  = lens _rcgCallback (\ s a -> s{_rcgCallback = a})

instance GoogleRequest ResourcesCalendarsGet where
        type Rs ResourcesCalendarsGet = CalendarResource
        type Scopes ResourcesCalendarsGet =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesCalendarsGet'{..}
          = go _rcgCustomer _rcgCalendarResourceId _rcgXgafv
              _rcgUploadProtocol
              _rcgAccessToken
              _rcgUploadType
              _rcgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsGetResource)
                      mempty
