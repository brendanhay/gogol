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
-- Module      : Network.Google.Resource.Partners.Leads.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists advertiser leads for a user\'s associated company. Should only be
-- called within the context of an authorized logged in user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.leads.list@.
module Network.Google.Resource.Partners.Leads.List
    (
    -- * REST Resource
      LeadsListResource

    -- * Creating a Request
    , leadsList
    , LeadsList

    -- * Request Lenses
    , llXgafv
    , llUploadProtocol
    , llOrderBy
    , llAccessToken
    , llUploadType
    , llRequestMetadataPartnersSessionId
    , llRequestMetadataLocale
    , llRequestMetadataExperimentIds
    , llRequestMetadataUserOverridesIPAddress
    , llPageToken
    , llRequestMetadataTrafficSourceTrafficSubId
    , llPageSize
    , llRequestMetadataUserOverridesUserId
    , llRequestMetadataTrafficSourceTrafficSourceId
    , llCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.leads.list@ method which the
-- 'LeadsList' request conforms to.
type LeadsListResource =
     "v2" :>
       "leads" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "orderBy" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "requestMetadata.partnersSessionId" Text
                     :>
                     QueryParam "requestMetadata.locale" Text :>
                       QueryParams "requestMetadata.experimentIds" Text :>
                         QueryParam "requestMetadata.userOverrides.ipAddress"
                           Text
                           :>
                           QueryParam "pageToken" Text :>
                             QueryParam
                               "requestMetadata.trafficSource.trafficSubId"
                               Text
                               :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam
                                   "requestMetadata.userOverrides.userId"
                                   Text
                                   :>
                                   QueryParam
                                     "requestMetadata.trafficSource.trafficSourceId"
                                     Text
                                     :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListLeadsResponse

-- | Lists advertiser leads for a user\'s associated company. Should only be
-- called within the context of an authorized logged in user.
--
-- /See:/ 'leadsList' smart constructor.
data LeadsList =
  LeadsList'
    { _llXgafv                                       :: !(Maybe Xgafv)
    , _llUploadProtocol                              :: !(Maybe Text)
    , _llOrderBy                                     :: !(Maybe Text)
    , _llAccessToken                                 :: !(Maybe Text)
    , _llUploadType                                  :: !(Maybe Text)
    , _llRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _llRequestMetadataLocale                       :: !(Maybe Text)
    , _llRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _llRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _llPageToken                                   :: !(Maybe Text)
    , _llRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _llPageSize                                    :: !(Maybe (Textual Int32))
    , _llRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _llRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _llCallback                                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LeadsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llXgafv'
--
-- * 'llUploadProtocol'
--
-- * 'llOrderBy'
--
-- * 'llAccessToken'
--
-- * 'llUploadType'
--
-- * 'llRequestMetadataPartnersSessionId'
--
-- * 'llRequestMetadataLocale'
--
-- * 'llRequestMetadataExperimentIds'
--
-- * 'llRequestMetadataUserOverridesIPAddress'
--
-- * 'llPageToken'
--
-- * 'llRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'llPageSize'
--
-- * 'llRequestMetadataUserOverridesUserId'
--
-- * 'llRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'llCallback'
leadsList
    :: LeadsList
leadsList =
  LeadsList'
    { _llXgafv = Nothing
    , _llUploadProtocol = Nothing
    , _llOrderBy = Nothing
    , _llAccessToken = Nothing
    , _llUploadType = Nothing
    , _llRequestMetadataPartnersSessionId = Nothing
    , _llRequestMetadataLocale = Nothing
    , _llRequestMetadataExperimentIds = Nothing
    , _llRequestMetadataUserOverridesIPAddress = Nothing
    , _llPageToken = Nothing
    , _llRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _llPageSize = Nothing
    , _llRequestMetadataUserOverridesUserId = Nothing
    , _llRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _llCallback = Nothing
    }

-- | V1 error format.
llXgafv :: Lens' LeadsList (Maybe Xgafv)
llXgafv = lens _llXgafv (\ s a -> s{_llXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
llUploadProtocol :: Lens' LeadsList (Maybe Text)
llUploadProtocol
  = lens _llUploadProtocol
      (\ s a -> s{_llUploadProtocol = a})

-- | How to order Leads. Currently, only \`create_time\` and \`create_time
-- desc\` are supported
llOrderBy :: Lens' LeadsList (Maybe Text)
llOrderBy
  = lens _llOrderBy (\ s a -> s{_llOrderBy = a})

-- | OAuth access token.
llAccessToken :: Lens' LeadsList (Maybe Text)
llAccessToken
  = lens _llAccessToken
      (\ s a -> s{_llAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
llUploadType :: Lens' LeadsList (Maybe Text)
llUploadType
  = lens _llUploadType (\ s a -> s{_llUploadType = a})

-- | Google Partners session ID.
llRequestMetadataPartnersSessionId :: Lens' LeadsList (Maybe Text)
llRequestMetadataPartnersSessionId
  = lens _llRequestMetadataPartnersSessionId
      (\ s a -> s{_llRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
llRequestMetadataLocale :: Lens' LeadsList (Maybe Text)
llRequestMetadataLocale
  = lens _llRequestMetadataLocale
      (\ s a -> s{_llRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
llRequestMetadataExperimentIds :: Lens' LeadsList [Text]
llRequestMetadataExperimentIds
  = lens _llRequestMetadataExperimentIds
      (\ s a -> s{_llRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
llRequestMetadataUserOverridesIPAddress :: Lens' LeadsList (Maybe Text)
llRequestMetadataUserOverridesIPAddress
  = lens _llRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_llRequestMetadataUserOverridesIPAddress = a})

-- | A token identifying a page of results that the server returns.
-- Typically, this is the value of \`ListLeadsResponse.next_page_token\`
-- returned from the previous call to ListLeads.
llPageToken :: Lens' LeadsList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
llRequestMetadataTrafficSourceTrafficSubId :: Lens' LeadsList (Maybe Text)
llRequestMetadataTrafficSourceTrafficSubId
  = lens _llRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_llRequestMetadataTrafficSourceTrafficSubId = a})

-- | Requested page size. Server may return fewer leads than requested. If
-- unspecified, server picks an appropriate default.
llPageSize :: Lens' LeadsList (Maybe Int32)
llPageSize
  = lens _llPageSize (\ s a -> s{_llPageSize = a}) .
      mapping _Coerce

-- | Logged-in user ID to impersonate instead of the user\'s ID.
llRequestMetadataUserOverridesUserId :: Lens' LeadsList (Maybe Text)
llRequestMetadataUserOverridesUserId
  = lens _llRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_llRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
llRequestMetadataTrafficSourceTrafficSourceId :: Lens' LeadsList (Maybe Text)
llRequestMetadataTrafficSourceTrafficSourceId
  = lens _llRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_llRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
llCallback :: Lens' LeadsList (Maybe Text)
llCallback
  = lens _llCallback (\ s a -> s{_llCallback = a})

instance GoogleRequest LeadsList where
        type Rs LeadsList = ListLeadsResponse
        type Scopes LeadsList = '[]
        requestClient LeadsList'{..}
          = go _llXgafv _llUploadProtocol _llOrderBy
              _llAccessToken
              _llUploadType
              _llRequestMetadataPartnersSessionId
              _llRequestMetadataLocale
              (_llRequestMetadataExperimentIds ^. _Default)
              _llRequestMetadataUserOverridesIPAddress
              _llPageToken
              _llRequestMetadataTrafficSourceTrafficSubId
              _llPageSize
              _llRequestMetadataUserOverridesUserId
              _llRequestMetadataTrafficSourceTrafficSourceId
              _llCallback
              (Just AltJSON)
              partnersService
          where go
                  = buildClient (Proxy :: Proxy LeadsListResource)
                      mempty
