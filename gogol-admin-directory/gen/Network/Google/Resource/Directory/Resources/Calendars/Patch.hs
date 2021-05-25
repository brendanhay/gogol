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
-- Module      : Network.Google.Resource.Directory.Resources.Calendars.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a calendar resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.calendars.patch@.
module Network.Google.Resource.Directory.Resources.Calendars.Patch
    (
    -- * REST Resource
      ResourcesCalendarsPatchResource

    -- * Creating a Request
    , resourcesCalendarsPatch
    , ResourcesCalendarsPatch

    -- * Request Lenses
    , rcpXgafv
    , rcpUploadProtocol
    , rcpAccessToken
    , rcpUploadType
    , rcpPayload
    , rcpCustomer
    , rcpCalendarResourceId
    , rcpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.calendars.patch@ method which the
-- 'ResourcesCalendarsPatch' request conforms to.
type ResourcesCalendarsPatchResource =
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
                                   Patch '[JSON] CalendarResource

-- | Patches a calendar resource.
--
-- /See:/ 'resourcesCalendarsPatch' smart constructor.
data ResourcesCalendarsPatch =
  ResourcesCalendarsPatch'
    { _rcpXgafv :: !(Maybe Xgafv)
    , _rcpUploadProtocol :: !(Maybe Text)
    , _rcpAccessToken :: !(Maybe Text)
    , _rcpUploadType :: !(Maybe Text)
    , _rcpPayload :: !CalendarResource
    , _rcpCustomer :: !Text
    , _rcpCalendarResourceId :: !Text
    , _rcpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesCalendarsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpXgafv'
--
-- * 'rcpUploadProtocol'
--
-- * 'rcpAccessToken'
--
-- * 'rcpUploadType'
--
-- * 'rcpPayload'
--
-- * 'rcpCustomer'
--
-- * 'rcpCalendarResourceId'
--
-- * 'rcpCallback'
resourcesCalendarsPatch
    :: CalendarResource -- ^ 'rcpPayload'
    -> Text -- ^ 'rcpCustomer'
    -> Text -- ^ 'rcpCalendarResourceId'
    -> ResourcesCalendarsPatch
resourcesCalendarsPatch pRcpPayload_ pRcpCustomer_ pRcpCalendarResourceId_ =
  ResourcesCalendarsPatch'
    { _rcpXgafv = Nothing
    , _rcpUploadProtocol = Nothing
    , _rcpAccessToken = Nothing
    , _rcpUploadType = Nothing
    , _rcpPayload = pRcpPayload_
    , _rcpCustomer = pRcpCustomer_
    , _rcpCalendarResourceId = pRcpCalendarResourceId_
    , _rcpCallback = Nothing
    }


-- | V1 error format.
rcpXgafv :: Lens' ResourcesCalendarsPatch (Maybe Xgafv)
rcpXgafv = lens _rcpXgafv (\ s a -> s{_rcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcpUploadProtocol :: Lens' ResourcesCalendarsPatch (Maybe Text)
rcpUploadProtocol
  = lens _rcpUploadProtocol
      (\ s a -> s{_rcpUploadProtocol = a})

-- | OAuth access token.
rcpAccessToken :: Lens' ResourcesCalendarsPatch (Maybe Text)
rcpAccessToken
  = lens _rcpAccessToken
      (\ s a -> s{_rcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcpUploadType :: Lens' ResourcesCalendarsPatch (Maybe Text)
rcpUploadType
  = lens _rcpUploadType
      (\ s a -> s{_rcpUploadType = a})

-- | Multipart request metadata.
rcpPayload :: Lens' ResourcesCalendarsPatch CalendarResource
rcpPayload
  = lens _rcpPayload (\ s a -> s{_rcpPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rcpCustomer :: Lens' ResourcesCalendarsPatch Text
rcpCustomer
  = lens _rcpCustomer (\ s a -> s{_rcpCustomer = a})

-- | The unique ID of the calendar resource to update.
rcpCalendarResourceId :: Lens' ResourcesCalendarsPatch Text
rcpCalendarResourceId
  = lens _rcpCalendarResourceId
      (\ s a -> s{_rcpCalendarResourceId = a})

-- | JSONP
rcpCallback :: Lens' ResourcesCalendarsPatch (Maybe Text)
rcpCallback
  = lens _rcpCallback (\ s a -> s{_rcpCallback = a})

instance GoogleRequest ResourcesCalendarsPatch where
        type Rs ResourcesCalendarsPatch = CalendarResource
        type Scopes ResourcesCalendarsPatch =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesCalendarsPatch'{..}
          = go _rcpCustomer _rcpCalendarResourceId _rcpXgafv
              _rcpUploadProtocol
              _rcpAccessToken
              _rcpUploadType
              _rcpCallback
              (Just AltJSON)
              _rcpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesCalendarsPatchResource)
                      mempty
