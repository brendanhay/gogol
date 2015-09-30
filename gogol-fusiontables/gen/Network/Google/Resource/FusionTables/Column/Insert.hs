{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Column.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new column to the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesColumnInsert@.
module Network.Google.Resource.FusionTables.Column.Insert
    (
    -- * REST Resource
      ColumnInsertResource

    -- * Creating a Request
    , columnInsert'
    , ColumnInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIp
    , ciKey
    , ciOauthToken
    , ciTableId
    , ciFields
    , ciAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnInsert@ which the
-- 'ColumnInsert'' request conforms to.
type ColumnInsertResource =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Column

-- | Adds a new column to the table.
--
-- /See:/ 'columnInsert'' smart constructor.
data ColumnInsert' = ColumnInsert'
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIp      :: !(Maybe Text)
    , _ciKey         :: !(Maybe Text)
    , _ciOauthToken  :: !(Maybe Text)
    , _ciTableId     :: !Text
    , _ciFields      :: !(Maybe Text)
    , _ciAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIp'
--
-- * 'ciKey'
--
-- * 'ciOauthToken'
--
-- * 'ciTableId'
--
-- * 'ciFields'
--
-- * 'ciAlt'
columnInsert'
    :: Text -- ^ 'tableId'
    -> ColumnInsert'
columnInsert' pCiTableId_ =
    ColumnInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIp = Nothing
    , _ciKey = Nothing
    , _ciOauthToken = Nothing
    , _ciTableId = pCiTableId_
    , _ciFields = Nothing
    , _ciAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' ColumnInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' ColumnInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIp :: Lens' ColumnInsert' (Maybe Text)
ciUserIp = lens _ciUserIp (\ s a -> s{_ciUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' ColumnInsert' (Maybe Text)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOauthToken :: Lens' ColumnInsert' (Maybe Text)
ciOauthToken
  = lens _ciOauthToken (\ s a -> s{_ciOauthToken = a})

-- | Table for which a new column is being added.
ciTableId :: Lens' ColumnInsert' Text
ciTableId
  = lens _ciTableId (\ s a -> s{_ciTableId = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' ColumnInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

-- | Data format for the response.
ciAlt :: Lens' ColumnInsert' Alt
ciAlt = lens _ciAlt (\ s a -> s{_ciAlt = a})

instance GoogleRequest ColumnInsert' where
        type Rs ColumnInsert' = Column
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u ColumnInsert'{..}
          = go _ciQuotaUser (Just _ciPrettyPrint) _ciUserIp
              _ciKey
              _ciOauthToken
              _ciTableId
              _ciFields
              (Just _ciAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ColumnInsertResource)
                      r
                      u
