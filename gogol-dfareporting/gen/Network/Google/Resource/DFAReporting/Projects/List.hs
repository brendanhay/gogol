{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Projects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of projects, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingProjectsList@.
module DFAReporting.Projects.List
    (
    -- * REST Resource
      ProjectsListAPI

    -- * Creating a Request
    , projectsList
    , ProjectsList

    -- * Request Lenses
    , proQuotaUser
    , proPrettyPrint
    , proUserIp
    , proSearchString
    , proIds
    , proProfileId
    , proSortOrder
    , proKey
    , proPageToken
    , proSortField
    , proOauthToken
    , proAdvertiserIds
    , proMaxResults
    , proFields
    , proAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingProjectsList@ which the
-- 'ProjectsList' request conforms to.
type ProjectsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "sortField" Text :>
                     QueryParams "advertiserIds" Int64 :>
                       QueryParam "maxResults" Int32 :>
                         Get '[JSON] ProjectsListResponse

-- | Retrieves a list of projects, possibly filtered.
--
-- /See:/ 'projectsList' smart constructor.
data ProjectsList = ProjectsList
    { _proQuotaUser     :: !(Maybe Text)
    , _proPrettyPrint   :: !Bool
    , _proUserIp        :: !(Maybe Text)
    , _proSearchString  :: !(Maybe Text)
    , _proIds           :: !(Maybe Int64)
    , _proProfileId     :: !Int64
    , _proSortOrder     :: !(Maybe Text)
    , _proKey           :: !(Maybe Text)
    , _proPageToken     :: !(Maybe Text)
    , _proSortField     :: !(Maybe Text)
    , _proOauthToken    :: !(Maybe Text)
    , _proAdvertiserIds :: !(Maybe Int64)
    , _proMaxResults    :: !(Maybe Int32)
    , _proFields        :: !(Maybe Text)
    , _proAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proQuotaUser'
--
-- * 'proPrettyPrint'
--
-- * 'proUserIp'
--
-- * 'proSearchString'
--
-- * 'proIds'
--
-- * 'proProfileId'
--
-- * 'proSortOrder'
--
-- * 'proKey'
--
-- * 'proPageToken'
--
-- * 'proSortField'
--
-- * 'proOauthToken'
--
-- * 'proAdvertiserIds'
--
-- * 'proMaxResults'
--
-- * 'proFields'
--
-- * 'proAlt'
projectsList
    :: Int64 -- ^ 'profileId'
    -> ProjectsList
projectsList pProProfileId_ =
    ProjectsList
    { _proQuotaUser = Nothing
    , _proPrettyPrint = True
    , _proUserIp = Nothing
    , _proSearchString = Nothing
    , _proIds = Nothing
    , _proProfileId = pProProfileId_
    , _proSortOrder = Nothing
    , _proKey = Nothing
    , _proPageToken = Nothing
    , _proSortField = Nothing
    , _proOauthToken = Nothing
    , _proAdvertiserIds = Nothing
    , _proMaxResults = Nothing
    , _proFields = Nothing
    , _proAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
proQuotaUser :: Lens' ProjectsList' (Maybe Text)
proQuotaUser
  = lens _proQuotaUser (\ s a -> s{_proQuotaUser = a})

-- | Returns response with indentations and line breaks.
proPrettyPrint :: Lens' ProjectsList' Bool
proPrettyPrint
  = lens _proPrettyPrint
      (\ s a -> s{_proPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
proUserIp :: Lens' ProjectsList' (Maybe Text)
proUserIp
  = lens _proUserIp (\ s a -> s{_proUserIp = a})

-- | Allows searching for projects by name or ID. Wildcards (*) are allowed.
-- For example, \"project*2015\" will return projects with names like
-- \"project June 2015\", \"project April 2015\", or simply \"project
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"project\" will match projects with name \"my project\", \"project
-- 2015\", or simply \"project\".
proSearchString :: Lens' ProjectsList' (Maybe Text)
proSearchString
  = lens _proSearchString
      (\ s a -> s{_proSearchString = a})

-- | Select only projects with these IDs.
proIds :: Lens' ProjectsList' (Maybe Int64)
proIds = lens _proIds (\ s a -> s{_proIds = a})

-- | User profile ID associated with this request.
proProfileId :: Lens' ProjectsList' Int64
proProfileId
  = lens _proProfileId (\ s a -> s{_proProfileId = a})

-- | Order of sorted results, default is ASCENDING.
proSortOrder :: Lens' ProjectsList' (Maybe Text)
proSortOrder
  = lens _proSortOrder (\ s a -> s{_proSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' ProjectsList' (Maybe Text)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | Value of the nextPageToken from the previous result page.
proPageToken :: Lens' ProjectsList' (Maybe Text)
proPageToken
  = lens _proPageToken (\ s a -> s{_proPageToken = a})

-- | Field by which to sort the list.
proSortField :: Lens' ProjectsList' (Maybe Text)
proSortField
  = lens _proSortField (\ s a -> s{_proSortField = a})

-- | OAuth 2.0 token for the current user.
proOauthToken :: Lens' ProjectsList' (Maybe Text)
proOauthToken
  = lens _proOauthToken
      (\ s a -> s{_proOauthToken = a})

-- | Select only projects with these advertiser IDs.
proAdvertiserIds :: Lens' ProjectsList' (Maybe Int64)
proAdvertiserIds
  = lens _proAdvertiserIds
      (\ s a -> s{_proAdvertiserIds = a})

-- | Maximum number of results to return.
proMaxResults :: Lens' ProjectsList' (Maybe Int32)
proMaxResults
  = lens _proMaxResults
      (\ s a -> s{_proMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
proFields :: Lens' ProjectsList' (Maybe Text)
proFields
  = lens _proFields (\ s a -> s{_proFields = a})

-- | Data format for the response.
proAlt :: Lens' ProjectsList' Text
proAlt = lens _proAlt (\ s a -> s{_proAlt = a})

instance GoogleRequest ProjectsList' where
        type Rs ProjectsList' = ProjectsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ProjectsList{..}
          = go _proQuotaUser _proPrettyPrint _proUserIp
              _proSearchString
              _proIds
              _proProfileId
              _proSortOrder
              _proKey
              _proPageToken
              _proSortField
              _proOauthToken
              _proAdvertiserIds
              _proMaxResults
              _proFields
              _proAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ProjectsListAPI) r
                      u
