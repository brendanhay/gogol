{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified table.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesParentsList@.
module Mapsengine.Tables.Parents.List
    (
    -- * REST Resource
      TablesParentsListAPI

    -- * Creating a Request
    , tablesParentsList
    , TablesParentsList

    -- * Request Lenses
    , tplQuotaUser
    , tplPrettyPrint
    , tplUserIp
    , tplKey
    , tplId
    , tplPageToken
    , tplOauthToken
    , tplMaxResults
    , tplFields
    , tplAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesParentsList@ which the
-- 'TablesParentsList' request conforms to.
type TablesParentsListAPI =
     "tables" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified table.
--
-- /See:/ 'tablesParentsList' smart constructor.
data TablesParentsList = TablesParentsList
    { _tplQuotaUser   :: !(Maybe Text)
    , _tplPrettyPrint :: !Bool
    , _tplUserIp      :: !(Maybe Text)
    , _tplKey         :: !(Maybe Text)
    , _tplId          :: !Text
    , _tplPageToken   :: !(Maybe Text)
    , _tplOauthToken  :: !(Maybe Text)
    , _tplMaxResults  :: !(Maybe Word32)
    , _tplFields      :: !(Maybe Text)
    , _tplAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplQuotaUser'
--
-- * 'tplPrettyPrint'
--
-- * 'tplUserIp'
--
-- * 'tplKey'
--
-- * 'tplId'
--
-- * 'tplPageToken'
--
-- * 'tplOauthToken'
--
-- * 'tplMaxResults'
--
-- * 'tplFields'
--
-- * 'tplAlt'
tablesParentsList
    :: Text -- ^ 'id'
    -> TablesParentsList
tablesParentsList pTplId_ =
    TablesParentsList
    { _tplQuotaUser = Nothing
    , _tplPrettyPrint = True
    , _tplUserIp = Nothing
    , _tplKey = Nothing
    , _tplId = pTplId_
    , _tplPageToken = Nothing
    , _tplOauthToken = Nothing
    , _tplMaxResults = Nothing
    , _tplFields = Nothing
    , _tplAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tplQuotaUser :: Lens' TablesParentsList' (Maybe Text)
tplQuotaUser
  = lens _tplQuotaUser (\ s a -> s{_tplQuotaUser = a})

-- | Returns response with indentations and line breaks.
tplPrettyPrint :: Lens' TablesParentsList' Bool
tplPrettyPrint
  = lens _tplPrettyPrint
      (\ s a -> s{_tplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tplUserIp :: Lens' TablesParentsList' (Maybe Text)
tplUserIp
  = lens _tplUserIp (\ s a -> s{_tplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tplKey :: Lens' TablesParentsList' (Maybe Text)
tplKey = lens _tplKey (\ s a -> s{_tplKey = a})

-- | The ID of the table whose parents will be listed.
tplId :: Lens' TablesParentsList' Text
tplId = lens _tplId (\ s a -> s{_tplId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
tplPageToken :: Lens' TablesParentsList' (Maybe Text)
tplPageToken
  = lens _tplPageToken (\ s a -> s{_tplPageToken = a})

-- | OAuth 2.0 token for the current user.
tplOauthToken :: Lens' TablesParentsList' (Maybe Text)
tplOauthToken
  = lens _tplOauthToken
      (\ s a -> s{_tplOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
tplMaxResults :: Lens' TablesParentsList' (Maybe Word32)
tplMaxResults
  = lens _tplMaxResults
      (\ s a -> s{_tplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tplFields :: Lens' TablesParentsList' (Maybe Text)
tplFields
  = lens _tplFields (\ s a -> s{_tplFields = a})

-- | Data format for the response.
tplAlt :: Lens' TablesParentsList' Text
tplAlt = lens _tplAlt (\ s a -> s{_tplAlt = a})

instance GoogleRequest TablesParentsList' where
        type Rs TablesParentsList' = ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesParentsList{..}
          = go _tplQuotaUser _tplPrettyPrint _tplUserIp _tplKey
              _tplId
              _tplPageToken
              _tplOauthToken
              _tplMaxResults
              _tplFields
              _tplAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesParentsListAPI)
                      r
                      u
