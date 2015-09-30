{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Snapshots.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of Snapshot resources contained within the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeSnapshotsList@.
module Compute.Snapshots.List
    (
    -- * REST Resource
      SnapshotsListAPI

    -- * Creating a Request
    , snapshotsList
    , SnapshotsList

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slProject
    , slUserIp
    , slKey
    , slFilter
    , slPageToken
    , slOauthToken
    , slMaxResults
    , slFields
    , slAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeSnapshotsList@ which the
-- 'SnapshotsList' request conforms to.
type SnapshotsListAPI =
     Capture "project" Text :>
       "global" :>
         "snapshots" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] SnapshotList

-- | Retrieves the list of Snapshot resources contained within the specified
-- project.
--
-- /See:/ 'snapshotsList' smart constructor.
data SnapshotsList = SnapshotsList
    { _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slProject     :: !Text
    , _slUserIp      :: !(Maybe Text)
    , _slKey         :: !(Maybe Text)
    , _slFilter      :: !(Maybe Text)
    , _slPageToken   :: !(Maybe Text)
    , _slOauthToken  :: !(Maybe Text)
    , _slMaxResults  :: !Word32
    , _slFields      :: !(Maybe Text)
    , _slAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slProject'
--
-- * 'slUserIp'
--
-- * 'slKey'
--
-- * 'slFilter'
--
-- * 'slPageToken'
--
-- * 'slOauthToken'
--
-- * 'slMaxResults'
--
-- * 'slFields'
--
-- * 'slAlt'
snapshotsList
    :: Text -- ^ 'project'
    -> SnapshotsList
snapshotsList pSlProject_ =
    SnapshotsList
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slProject = pSlProject_
    , _slUserIp = Nothing
    , _slKey = Nothing
    , _slFilter = Nothing
    , _slPageToken = Nothing
    , _slOauthToken = Nothing
    , _slMaxResults = 500
    , _slFields = Nothing
    , _slAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SnapshotsList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SnapshotsList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | Name of the project scoping this request.
slProject :: Lens' SnapshotsList' Text
slProject
  = lens _slProject (\ s a -> s{_slProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SnapshotsList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SnapshotsList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
slFilter :: Lens' SnapshotsList' (Maybe Text)
slFilter = lens _slFilter (\ s a -> s{_slFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
slPageToken :: Lens' SnapshotsList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SnapshotsList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Maximum count of results to be returned.
slMaxResults :: Lens' SnapshotsList' Word32
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SnapshotsList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SnapshotsList' Text
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SnapshotsList' where
        type Rs SnapshotsList' = SnapshotList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u SnapshotsList{..}
          = go _slQuotaUser _slPrettyPrint _slProject _slUserIp
              _slKey
              _slFilter
              _slPageToken
              _slOauthToken
              (Just _slMaxResults)
              _slFields
              _slAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SnapshotsListAPI) r
                      u
