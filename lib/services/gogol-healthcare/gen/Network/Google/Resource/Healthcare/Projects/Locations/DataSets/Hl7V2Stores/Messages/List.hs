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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the messages in the given HL7v2 store with support for
-- filtering. Note: HL7v2 messages are indexed asynchronously, so there
-- might be a slight delay between the time a message is created and when
-- it can be found through a filter.
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
    , pldshvsmlView
    , pldshvsmlFilter
    , pldshvsmlPageToken
    , pldshvsmlPageSize
    , pldshvsmlCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.list@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresMessagesList' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresMessagesListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "messages" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "view"
                       ProjectsLocationsDataSetsHl7V2StoresMessagesListView
                       :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListMessagesResponse

-- | Lists all the messages in the given HL7v2 store with support for
-- filtering. Note: HL7v2 messages are indexed asynchronously, so there
-- might be a slight delay between the time a message is created and when
-- it can be found through a filter.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresMessagesList' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresMessagesList =
  ProjectsLocationsDataSetsHl7V2StoresMessagesList'
    { _pldshvsmlParent :: !Text
    , _pldshvsmlXgafv :: !(Maybe Xgafv)
    , _pldshvsmlUploadProtocol :: !(Maybe Text)
    , _pldshvsmlOrderBy :: !(Maybe Text)
    , _pldshvsmlAccessToken :: !(Maybe Text)
    , _pldshvsmlUploadType :: !(Maybe Text)
    , _pldshvsmlView :: !(Maybe ProjectsLocationsDataSetsHl7V2StoresMessagesListView)
    , _pldshvsmlFilter :: !(Maybe Text)
    , _pldshvsmlPageToken :: !(Maybe Text)
    , _pldshvsmlPageSize :: !(Maybe (Textual Int32))
    , _pldshvsmlCallback :: !(Maybe Text)
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
-- * 'pldshvsmlView'
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
    , _pldshvsmlView = Nothing
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
-- Fields available for ordering are: * \`send_time\`
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

-- | Specifies the parts of the Message to return in the response. When
-- unspecified, equivalent to BASIC. Setting this to anything other than
-- BASIC with a \`page_size\` larger than the default can generate a large
-- response, which impacts the performance of this method.
pldshvsmlView :: Lens' ProjectsLocationsDataSetsHl7V2StoresMessagesList (Maybe ProjectsLocationsDataSetsHl7V2StoresMessagesListView)
pldshvsmlView
  = lens _pldshvsmlView
      (\ s a -> s{_pldshvsmlView = a})

-- | Restricts messages returned to those matching a filter. The following
-- syntax is available: * A string field value can be written as text
-- inside quotation marks, for example \`\"query text\"\`. The only valid
-- relational operation for text fields is equality (\`=\`), where text is
-- searched within the field, rather than having the field be equal to the
-- text. For example, \`\"Comment = great\"\` returns messages with
-- \`great\` in the comment field. * A number field value can be written as
-- an integer, a decimal, or an exponential. The valid relational operators
-- for number fields are the equality operator (\`=\`), along with the less
-- than\/greater than operators (\`\<\`, \`\<=\`, \`>\`, \`>=\`). Note that
-- there is no inequality (\`!=\`) operator. You can prepend the \`NOT\`
-- operator to an expression to negate it. * A date field value must be
-- written in \`yyyy-mm-dd\` form. Fields with date and time use the
-- RFC3339 time format. Leading zeros are required for one-digit months and
-- days. The valid relational operators for date fields are the equality
-- operator (\`=\`) , along with the less than\/greater than operators
-- (\`\<\`, \`\<=\`, \`>\`, \`>=\`). Note that there is no inequality
-- (\`!=\`) operator. You can prepend the \`NOT\` operator to an expression
-- to negate it. * Multiple field query expressions can be combined in one
-- query by adding \`AND\` or \`OR\` operators between the expressions. If
-- a boolean operator appears within a quoted string, it is not treated as
-- special, it\'s just another part of the character string to be matched.
-- You can prepend the \`NOT\` operator to an expression to negate it.
-- Fields\/functions available for filtering are: * \`message_type\`, from
-- the MSH-9.1 field. For example, \`NOT message_type = \"ADT\"\`. *
-- \`send_date\` or \`sendDate\`, the YYYY-MM-DD date the message was sent
-- in the dataset\'s time_zone, from the MSH-7 segment. For example,
-- \`send_date \< \"2017-01-02\"\`. * \`send_time\`, the timestamp when the
-- message was sent, using the RFC3339 time format for comparisons, from
-- the MSH-7 segment. For example, \`send_time \<
-- \"2017-01-02T00:00:00-05:00\"\`. * \`create_time\`, the timestamp when
-- the message was created in the HL7v2 store. Use the RFC3339 time format
-- for comparisons. For example, \`create_time \<
-- \"2017-01-02T00:00:00-05:00\"\`. * \`send_facility\`, the care center
-- that the message came from, from the MSH-4 segment. For example,
-- \`send_facility = \"ABC\"\`. * \`PatientId(value, type)\`, which matches
-- if the message lists a patient having an ID of the given value and type
-- in the PID-2, PID-3, or PID-4 segments. For example,
-- \`PatientId(\"123456\", \"MRN\")\`. * \`labels.x\`, a string value of
-- the label with key \`x\` as set using the Message.labels map. For
-- example, \`labels.\"priority\"=\"high\"\`. The operator \`:*\` can be
-- used to assert the existence of a label. For example,
-- \`labels.\"priority\":*\`.
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

-- | Limit on the number of messages to return in a single response. If not
-- specified, 100 is used. May not be larger than 1000.
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
              _pldshvsmlView
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
