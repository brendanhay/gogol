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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a calendar resource. This method supports patch semantics,
-- meaning you only need to include the fields you wish to update. Fields
-- that are not present in the request will be preserved.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.update@.
module Network.Google.Resource.Directory.Resources.Calendars.Update
    (
    -- * REST Resource
      ResourcesCalendarsUpdateResource

    -- * Creating a Request
    , resourcesCalendarsUpdate
    , ResourcesCalendarsUpdate

    -- * Request Lenses
    , rcuXgafv
    , rcuUploadProtocol
    , rcuAccessToken
    , rcuUploadType
    , rcuPayload
    , rcuCustomer
    , rcuCalendarResourceId
    , rcuCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.update@ method which the
-- 'ResourcesCalendarsUpdate' request conforms to.
type ResourcesCalendarsUpdateResource =
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
                                 ReqBody '[JSON] CalendarResource :>
                                   Put '[JSON] CalendarResource

-- | Updates a calendar resource. This method supports patch semantics,
-- meaning you only need to include the fields you wish to update. Fields
-- that are not present in the request will be preserved.
--
-- /See:/ 'resourcesCalendarsUpdate' smart constructor.
data ResourcesCalendarsUpdate =
  ResourcesCalendarsUpdate'
    { _rcuXgafv :: !(Maybe Xgafv)
    , _rcuUploadProtocol :: !(Maybe Text)
    , _rcuAccessToken :: !(Maybe Text)
    , _rcuUploadType :: !(Maybe Text)
    , _rcuPayload :: !CalendarResource
    , _rcuCustomer :: !Text
    , _rcuCalendarResourceId :: !Text
    , _rcuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesCalendarsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcuXgafv'
--
-- * 'rcuUploadProtocol'
--
-- * 'rcuAccessToken'
--
-- * 'rcuUploadType'
--
-- * 'rcuPayload'
--
-- * 'rcuCustomer'
--
-- * 'rcuCalendarResourceId'
--
-- * 'rcuCallback'
resourcesCalendarsUpdate
    :: CalendarResource -- ^ 'rcuPayload'
    -> Text -- ^ 'rcuCustomer'
    -> Text -- ^ 'rcuCalendarResourceId'
    -> ResourcesCalendarsUpdate
resourcesCalendarsUpdate pRcuPayload_ pRcuCustomer_ pRcuCalendarResourceId_ =
  ResourcesCalendarsUpdate'
    { _rcuXgafv = Nothing
    , _rcuUploadProtocol = Nothing
    , _rcuAccessToken = Nothing
    , _rcuUploadType = Nothing
    , _rcuPayload = pRcuPayload_
    , _rcuCustomer = pRcuCustomer_
    , _rcuCalendarResourceId = pRcuCalendarResourceId_
    , _rcuCallback = Nothing
    }


-- | V1 error format.
rcuXgafv :: Lens' ResourcesCalendarsUpdate (Maybe Xgafv)
rcuXgafv = lens _rcuXgafv (\ s a -> s{_rcuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcuUploadProtocol :: Lens' ResourcesCalendarsUpdate (Maybe Text)
rcuUploadProtocol
  = lens _rcuUploadProtocol
      (\ s a -> s{_rcuUploadProtocol = a})

-- | OAuth access token.
rcuAccessToken :: Lens' ResourcesCalendarsUpdate (Maybe Text)
rcuAccessToken
  = lens _rcuAccessToken
      (\ s a -> s{_rcuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcuUploadType :: Lens' ResourcesCalendarsUpdate (Maybe Text)
rcuUploadType
  = lens _rcuUploadType
      (\ s a -> s{_rcuUploadType = a})

-- | Multipart request metadata.
rcuPayload :: Lens' ResourcesCalendarsUpdate CalendarResource
rcuPayload
  = lens _rcuPayload (\ s a -> s{_rcuPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rcuCustomer :: Lens' ResourcesCalendarsUpdate Text
rcuCustomer
  = lens _rcuCustomer (\ s a -> s{_rcuCustomer = a})

-- | The unique ID of the calendar resource to update.
rcuCalendarResourceId :: Lens' ResourcesCalendarsUpdate Text
rcuCalendarResourceId
  = lens _rcuCalendarResourceId
      (\ s a -> s{_rcuCalendarResourceId = a})

-- | JSONP
rcuCallback :: Lens' ResourcesCalendarsUpdate (Maybe Text)
rcuCallback
  = lens _rcuCallback (\ s a -> s{_rcuCallback = a})

instance GoogleRequest ResourcesCalendarsUpdate where
        type Rs ResourcesCalendarsUpdate = CalendarResource
        type Scopes ResourcesCalendarsUpdate =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesCalendarsUpdate'{..}
          = go _rcuCustomer _rcuCalendarResourceId _rcuXgafv
              _rcuUploadProtocol
              _rcuAccessToken
              _rcuUploadType
              _rcuCallback
              (Just AltJSON)
              _rcuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsUpdateResource)
                      mempty
