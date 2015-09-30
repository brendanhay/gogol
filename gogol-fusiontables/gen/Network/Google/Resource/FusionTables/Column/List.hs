{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Column.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of columns.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesColumnList@.
module FusionTables.Column.List
    (
    -- * REST Resource
      ColumnListAPI

    -- * Creating a Request
    , columnList
    , ColumnList

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clKey
    , clPageToken
    , clOauthToken
    , clTableId
    , clMaxResults
    , clFields
    , clAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnList@ which the
-- 'ColumnList' request conforms to.
type ColumnListAPI =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] ColumnList

-- | Retrieves a list of columns.
--
-- /See:/ 'columnList' smart constructor.
data ColumnList = ColumnList
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clUserIp      :: !(Maybe Text)
    , _clKey         :: !(Maybe Text)
    , _clPageToken   :: !(Maybe Text)
    , _clOauthToken  :: !(Maybe Text)
    , _clTableId     :: !Text
    , _clMaxResults  :: !(Maybe Word32)
    , _clFields      :: !(Maybe Text)
    , _clAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clKey'
--
-- * 'clPageToken'
--
-- * 'clOauthToken'
--
-- * 'clTableId'
--
-- * 'clMaxResults'
--
-- * 'clFields'
--
-- * 'clAlt'
columnList
    :: Text -- ^ 'tableId'
    -> ColumnList
columnList pClTableId_ =
    ColumnList
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clOauthToken = Nothing
    , _clTableId = pClTableId_
    , _clMaxResults = Nothing
    , _clFields = Nothing
    , _clAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' ColumnList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' ColumnList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' ColumnList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' ColumnList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Continuation token specifying which result page to return.
clPageToken :: Lens' ColumnList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' ColumnList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Table whose columns are being listed.
clTableId :: Lens' ColumnList' Text
clTableId
  = lens _clTableId (\ s a -> s{_clTableId = a})

-- | Maximum number of columns to return. Default is 5.
clMaxResults :: Lens' ColumnList' (Maybe Word32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' ColumnList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' ColumnList' Text
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest ColumnList' where
        type Rs ColumnList' = ColumnList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u ColumnList{..}
          = go _clQuotaUser _clPrettyPrint _clUserIp _clKey
              _clPageToken
              _clOauthToken
              _clTableId
              _clMaxResults
              _clFields
              _clAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ColumnListAPI) r u
