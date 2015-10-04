{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all features readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesFeaturesList@.
module Network.Google.Resource.MapsEngine.Tables.Features.List
    (
    -- * REST Resource
      TablesFeaturesListResource

    -- * Creating a Request
    , tablesFeaturesList'
    , TablesFeaturesList'

    -- * Request Lenses
    , tflInclude
    , tflQuotaUser
    , tflPrettyPrint
    , tflWhere
    , tflOrderBy
    , tflUserIP
    , tflKey
    , tflVersion
    , tflId
    , tflLimit
    , tflPageToken
    , tflSelect
    , tflOAuthToken
    , tflIntersects
    , tflMaxResults
    , tflFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesFeaturesList@ which the
-- 'TablesFeaturesList'' request conforms to.
type TablesFeaturesListResource =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           QueryParam "include" Text :>
             QueryParam "where" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "version"
                   MapsEngineTablesFeaturesListVersion
                   :>
                   QueryParam "limit" Word32 :>
                     QueryParam "pageToken" Text :>
                       QueryParam "select" Text :>
                         QueryParam "intersects" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] FeaturesListResponse

-- | Return all features readable by the current user.
--
-- /See:/ 'tablesFeaturesList'' smart constructor.
data TablesFeaturesList' = TablesFeaturesList'
    { _tflInclude     :: !(Maybe Text)
    , _tflQuotaUser   :: !(Maybe Text)
    , _tflPrettyPrint :: !Bool
    , _tflWhere       :: !(Maybe Text)
    , _tflOrderBy     :: !(Maybe Text)
    , _tflUserIP      :: !(Maybe Text)
    , _tflKey         :: !(Maybe Key)
    , _tflVersion     :: !(Maybe MapsEngineTablesFeaturesListVersion)
    , _tflId          :: !Text
    , _tflLimit       :: !(Maybe Word32)
    , _tflPageToken   :: !(Maybe Text)
    , _tflSelect      :: !(Maybe Text)
    , _tflOAuthToken  :: !(Maybe OAuthToken)
    , _tflIntersects  :: !(Maybe Text)
    , _tflMaxResults  :: !(Maybe Word32)
    , _tflFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tflInclude'
--
-- * 'tflQuotaUser'
--
-- * 'tflPrettyPrint'
--
-- * 'tflWhere'
--
-- * 'tflOrderBy'
--
-- * 'tflUserIP'
--
-- * 'tflKey'
--
-- * 'tflVersion'
--
-- * 'tflId'
--
-- * 'tflLimit'
--
-- * 'tflPageToken'
--
-- * 'tflSelect'
--
-- * 'tflOAuthToken'
--
-- * 'tflIntersects'
--
-- * 'tflMaxResults'
--
-- * 'tflFields'
tablesFeaturesList'
    :: Text -- ^ 'id'
    -> TablesFeaturesList'
tablesFeaturesList' pTflId_ =
    TablesFeaturesList'
    { _tflInclude = Nothing
    , _tflQuotaUser = Nothing
    , _tflPrettyPrint = True
    , _tflWhere = Nothing
    , _tflOrderBy = Nothing
    , _tflUserIP = Nothing
    , _tflKey = Nothing
    , _tflVersion = Nothing
    , _tflId = pTflId_
    , _tflLimit = Nothing
    , _tflPageToken = Nothing
    , _tflSelect = Nothing
    , _tflOAuthToken = Nothing
    , _tflIntersects = Nothing
    , _tflMaxResults = Nothing
    , _tflFields = Nothing
    }

-- | A comma separated list of optional data to include. Optional data
-- available: schema.
tflInclude :: Lens' TablesFeaturesList' (Maybe Text)
tflInclude
  = lens _tflInclude (\ s a -> s{_tflInclude = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tflQuotaUser :: Lens' TablesFeaturesList' (Maybe Text)
tflQuotaUser
  = lens _tflQuotaUser (\ s a -> s{_tflQuotaUser = a})

-- | Returns response with indentations and line breaks.
tflPrettyPrint :: Lens' TablesFeaturesList' Bool
tflPrettyPrint
  = lens _tflPrettyPrint
      (\ s a -> s{_tflPrettyPrint = a})

-- | An SQL-like predicate used to filter results.
tflWhere :: Lens' TablesFeaturesList' (Maybe Text)
tflWhere = lens _tflWhere (\ s a -> s{_tflWhere = a})

-- | An SQL-like order by clause used to sort results. If this parameter is
-- not included, the order of features is undefined.
tflOrderBy :: Lens' TablesFeaturesList' (Maybe Text)
tflOrderBy
  = lens _tflOrderBy (\ s a -> s{_tflOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tflUserIP :: Lens' TablesFeaturesList' (Maybe Text)
tflUserIP
  = lens _tflUserIP (\ s a -> s{_tflUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tflKey :: Lens' TablesFeaturesList' (Maybe Key)
tflKey = lens _tflKey (\ s a -> s{_tflKey = a})

-- | The table version to access. See Accessing Public Data for information.
tflVersion :: Lens' TablesFeaturesList' (Maybe MapsEngineTablesFeaturesListVersion)
tflVersion
  = lens _tflVersion (\ s a -> s{_tflVersion = a})

-- | The ID of the table to which these features belong.
tflId :: Lens' TablesFeaturesList' Text
tflId = lens _tflId (\ s a -> s{_tflId = a})

-- | The total number of features to return from the query, irrespective of
-- the number of pages.
tflLimit :: Lens' TablesFeaturesList' (Maybe Word32)
tflLimit = lens _tflLimit (\ s a -> s{_tflLimit = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
tflPageToken :: Lens' TablesFeaturesList' (Maybe Text)
tflPageToken
  = lens _tflPageToken (\ s a -> s{_tflPageToken = a})

-- | A SQL-like projection clause used to specify returned properties. If
-- this parameter is not included, all properties are returned.
tflSelect :: Lens' TablesFeaturesList' (Maybe Text)
tflSelect
  = lens _tflSelect (\ s a -> s{_tflSelect = a})

-- | OAuth 2.0 token for the current user.
tflOAuthToken :: Lens' TablesFeaturesList' (Maybe OAuthToken)
tflOAuthToken
  = lens _tflOAuthToken
      (\ s a -> s{_tflOAuthToken = a})

-- | A geometry literal that specifies the spatial restriction of the query.
tflIntersects :: Lens' TablesFeaturesList' (Maybe Text)
tflIntersects
  = lens _tflIntersects
      (\ s a -> s{_tflIntersects = a})

-- | The maximum number of items to include in the response, used for paging.
-- The maximum supported value is 1000.
tflMaxResults :: Lens' TablesFeaturesList' (Maybe Word32)
tflMaxResults
  = lens _tflMaxResults
      (\ s a -> s{_tflMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tflFields :: Lens' TablesFeaturesList' (Maybe Text)
tflFields
  = lens _tflFields (\ s a -> s{_tflFields = a})

instance GoogleAuth TablesFeaturesList' where
        authKey = tflKey . _Just
        authToken = tflOAuthToken . _Just

instance GoogleRequest TablesFeaturesList' where
        type Rs TablesFeaturesList' = FeaturesListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesFeaturesList'{..}
          = go _tflId _tflInclude _tflWhere _tflOrderBy
              _tflVersion
              _tflLimit
              _tflPageToken
              _tflSelect
              _tflIntersects
              _tflMaxResults
              _tflQuotaUser
              (Just _tflPrettyPrint)
              _tflUserIP
              _tflFields
              _tflKey
              _tflOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesFeaturesListResource)
                      r
                      u
