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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.delete@.
module Network.Google.Resource.Directory.Resources.Calendars.Delete
    (
    -- * REST Resource
      ResourcesCalendarsDeleteResource

    -- * Creating a Request
    , resourcesCalendarsDelete
    , ResourcesCalendarsDelete

    -- * Request Lenses
    , rcdXgafv
    , rcdUploadProtocol
    , rcdAccessToken
    , rcdUploadType
    , rcdCustomer
    , rcdCalendarResourceId
    , rcdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.delete@ method which the
-- 'ResourcesCalendarsDelete' request conforms to.
type ResourcesCalendarsDeleteResource =
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
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a calendar resource.
--
-- /See:/ 'resourcesCalendarsDelete' smart constructor.
data ResourcesCalendarsDelete =
  ResourcesCalendarsDelete'
    { _rcdXgafv :: !(Maybe Xgafv)
    , _rcdUploadProtocol :: !(Maybe Text)
    , _rcdAccessToken :: !(Maybe Text)
    , _rcdUploadType :: !(Maybe Text)
    , _rcdCustomer :: !Text
    , _rcdCalendarResourceId :: !Text
    , _rcdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesCalendarsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcdXgafv'
--
-- * 'rcdUploadProtocol'
--
-- * 'rcdAccessToken'
--
-- * 'rcdUploadType'
--
-- * 'rcdCustomer'
--
-- * 'rcdCalendarResourceId'
--
-- * 'rcdCallback'
resourcesCalendarsDelete
    :: Text -- ^ 'rcdCustomer'
    -> Text -- ^ 'rcdCalendarResourceId'
    -> ResourcesCalendarsDelete
resourcesCalendarsDelete pRcdCustomer_ pRcdCalendarResourceId_ =
  ResourcesCalendarsDelete'
    { _rcdXgafv = Nothing
    , _rcdUploadProtocol = Nothing
    , _rcdAccessToken = Nothing
    , _rcdUploadType = Nothing
    , _rcdCustomer = pRcdCustomer_
    , _rcdCalendarResourceId = pRcdCalendarResourceId_
    , _rcdCallback = Nothing
    }


-- | V1 error format.
rcdXgafv :: Lens' ResourcesCalendarsDelete (Maybe Xgafv)
rcdXgafv = lens _rcdXgafv (\ s a -> s{_rcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcdUploadProtocol :: Lens' ResourcesCalendarsDelete (Maybe Text)
rcdUploadProtocol
  = lens _rcdUploadProtocol
      (\ s a -> s{_rcdUploadProtocol = a})

-- | OAuth access token.
rcdAccessToken :: Lens' ResourcesCalendarsDelete (Maybe Text)
rcdAccessToken
  = lens _rcdAccessToken
      (\ s a -> s{_rcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcdUploadType :: Lens' ResourcesCalendarsDelete (Maybe Text)
rcdUploadType
  = lens _rcdUploadType
      (\ s a -> s{_rcdUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rcdCustomer :: Lens' ResourcesCalendarsDelete Text
rcdCustomer
  = lens _rcdCustomer (\ s a -> s{_rcdCustomer = a})

-- | The unique ID of the calendar resource to delete.
rcdCalendarResourceId :: Lens' ResourcesCalendarsDelete Text
rcdCalendarResourceId
  = lens _rcdCalendarResourceId
      (\ s a -> s{_rcdCalendarResourceId = a})

-- | JSONP
rcdCallback :: Lens' ResourcesCalendarsDelete (Maybe Text)
rcdCallback
  = lens _rcdCallback (\ s a -> s{_rcdCallback = a})

instance GoogleRequest ResourcesCalendarsDelete where
        type Rs ResourcesCalendarsDelete = ()
        type Scopes ResourcesCalendarsDelete =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesCalendarsDelete'{..}
          = go _rcdCustomer _rcdCalendarResourceId _rcdXgafv
              _rcdUploadProtocol
              _rcdAccessToken
              _rcdUploadType
              _rcdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsDeleteResource)
                      mempty
