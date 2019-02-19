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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the messages in the given HL7v2 store with support for
-- filtering.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Messages.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresMessagesListResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresMessagesList
    , ProjectsLocationsDataSetsHl7V2StoresMessagesList

    -- * Request Lenses
    , pldshvsmlParent
    , pldshvsmlXgafv
    , pldshvsmlUploadProtocol
    , pldshvsmlOrderBy
    , pldshvsmlAccessToken
    , pldshvsmlUploadType
    , pldshvsmlFilter
    , pldshvsmlPageToken
    , pldshvsmlPageSize
    , pldshvsmlCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.list@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresMessagesList' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresMessagesListResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "messages" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListMessagesResponse

-- | Lists all the messages in the given HL7v2 store with support for
-- filtering.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresMessagesList' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresMessagesList =
  ProjectsLocationsDataSetsHl7V2StoresMessagesList'
    { _pldshvsmlParent         :: !Text
    , _pldshvsmlXgafv          :: !(Maybe Xgafv)
    , _pldshvsmlUploadProtocol :: !(Maybe Text)
    , _pldshvsmlOrderBy        :: !(Maybe Text)
    , _pldshvsmlAccessToken    :: !(Maybe Text)
    , _pldshvsmlUploadType     :: !(Maybe Text)
    , _pldshvsmlFilter         :: !(Maybe Text)
    , _pldshvsmlPageToken      :: !(Maybe Text)
    , _pldshvsmlPageSize       :: !(Maybe (Textual Int32))
    , _pldshvsmlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresMessagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsmlParent'
--
-- * 'pldshvsmlXgafv'
--
-- * 'pldshvsmlUploadProtocol'
--
-- * 'pldshvsmlOrderBy'
--
-- * 'pldshvsmlAccessToken'
--
-- * 'pldshvsmlUploadType'
--
-- * 'pldshvsmlFilter'
--
-- * 'pldshvsmlPageToken'
--
-- * 'pldshvsmlPageSize'
--
-- * 'pldshvsmlCallback'
projectsLocationsDataSetsHl7V2StoresMessagesList
    :: Text -- ^ 'pldshvsmlParent'
    -> ProjectsLocationsDataSetsHl7V2StoresMessagesList
projectsLocationsDataSetsHl7V2StoresMessagesList pPldshvsmlParent_ =
  ProjectsLocationsDataSetsHl7V2StoresMessagesList'
    { _pldshvsmlParent = pPldshvsmlParent_
    , _pldshvsmlXgafv = Nothing
    , _pldshvsmlUploadProtocol = Nothing
    , _pldshvsmlOrderBy = Nothing
    , _pldshvsmlAccessToken = Nothing
    , _pldshvsmlUploadType = Nothing
    , _pldshvsmlFilter = Nothing
    , _pldshvsmlPageToken = Nothing
    , _pldshvsmlPageSize = Nothing
    , _pldshvsmlCallback = Nothing
    }

-- | Name of the HL7v2 store to retrieve messages from.
pldshvsmlParent :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList Text
pldshvsmlParent
  = lens _pldshvsmlParent
      (\ s a -> s{_pldshvsmlParent = a})

-- | V1 error format.
pldshvsmlXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Xgafv)
pldshvsmlXgafv
  = lens _pldshvsmlXgafv
      (\ s a -> s{_pldshvsmlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsmlUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Text)
pldshvsmlUploadProtocol
  = lens _pldshvsmlUploadProtocol
      (\ s a -> s{_pldshvsmlUploadProtocol = a})

-- | Orders messages returned by the specified order_by clause. Syntax:
-- https:\/\/cloud.google.com\/apis\/design\/design_patterns#sorting_order
-- Fields available for ordering are: - send_time
pldshvsmlOrderBy :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Text)
pldshvsmlOrderBy
  = lens _pldshvsmlOrderBy
      (\ s a -> s{_pldshvsmlOrderBy = a})

-- | OAuth access token.
pldshvsmlAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Text)
pldshvsmlAccessToken
  = lens _pldshvsmlAccessToken
      (\ s a -> s{_pldshvsmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsmlUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Text)
pldshvsmlUploadType
  = lens _pldshvsmlUploadType
      (\ s a -> s{_pldshvsmlUploadType = a})

-- | Restricts messages returned to those matching a filter. Syntax:
-- https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/search\/query_strings
-- Fields\/functions available for filtering are: - message_type, from the
-- MSH-9 segment, e.g. \'NOT message_type = \"ADT\"\' - send_date or
-- sendDate, the YYYY-MM-DD date the message was sent in the dataset\'s
-- time_zone, from the MSH-7 segment; e.g. \'send_date \< \"2017-01-02\"\'
-- - send_time, the timestamp of when the message was sent, using the
-- RFC3339 time format for comparisons, from the MSH-7 segment; e.g.
-- \'send_time \< \"2017-01-02T00:00:00-05:00\"\' - send_facility, the
-- hospital\/trust that the message came from, from the MSH-4 segment, e.g.
-- \'send_facility = \"RAL\"\' - HL7RegExp(expr), which does regular
-- expression matching of expr against the HL7 message payload using re2
-- (http:\/\/code.google.com\/p\/re2\/) syntax; e.g.
-- \'HL7RegExp(\"^.*\\|.*\\|CERNER\")\' - PatientId(value, type), which
-- matches if the message lists a patient having an ID of the given value
-- and type in the PID-2, PID-3, or PID-4 segments; e.g.
-- \'PatientId(\"123456\", \"MRN\")\' - HasLabel(x), a boolean returning
-- true if the message has a label with key x (having any value) set using
-- the labels map in Message; e.g. \'HasLabel(\"priority\")\' - Label(x), a
-- string value of the label with key x as set using the labels map in
-- Message, e.g. \'Label(\"priority\") = \"high\"\'
pldshvsmlFilter :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Text)
pldshvsmlFilter
  = lens _pldshvsmlFilter
      (\ s a -> s{_pldshvsmlFilter = a})

-- | The next_page_token value returned from the previous List request, if
-- any.
pldshvsmlPageToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Text)
pldshvsmlPageToken
  = lens _pldshvsmlPageToken
      (\ s a -> s{_pldshvsmlPageToken = a})

-- | Limit on the number of messages to return in a single response. If zero
-- the default page size of 100 is used.
pldshvsmlPageSize :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Int32)
pldshvsmlPageSize
  = lens _pldshvsmlPageSize
      (\ s a -> s{_pldshvsmlPageSize = a})
      . mapping _Coerce

-- | JSONP
pldshvsmlCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe Text)
pldshvsmlCallback
  = lens _pldshvsmlCallback
      (\ s a -> s{_pldshvsmlCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresMessagesList
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresMessagesList
             = ListMessagesResponse
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresMessagesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresMessagesList'{..}
          = go _pldshvsmlParent _pldshvsmlXgafv
              _pldshvsmlUploadProtocol
              _pldshvsmlOrderBy
              _pldshvsmlAccessToken
              _pldshvsmlUploadType
              _pldshvsmlFilter
              _pldshvsmlPageToken
              _pldshvsmlPageSize
              _pldshvsmlCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresMessagesListResource)
                      mempty
