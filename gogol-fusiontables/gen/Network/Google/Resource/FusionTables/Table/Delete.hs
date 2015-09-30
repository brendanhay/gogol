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
-- Module      : Network.Google.Resource.FusionTables.Table.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableDelete@.
module Network.Google.Resource.FusionTables.Table.Delete
    (
    -- * REST Resource
      TableDeleteResource

    -- * Creating a Request
    , tableDelete'
    , TableDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIp
    , tdKey
    , tdOauthToken
    , tdTableId
    , tdFields
    , tdAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableDelete@ which the
-- 'TableDelete'' request conforms to.
type TableDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a table.
--
-- /See:/ 'tableDelete'' smart constructor.
data TableDelete' = TableDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdOauthToken  :: !(Maybe Text)
    , _tdTableId     :: !Text
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdOauthToken'
--
-- * 'tdTableId'
--
-- * 'tdFields'
--
-- * 'tdAlt'
tableDelete'
    :: Text -- ^ 'tableId'
    -> TableDelete'
tableDelete' pTdTableId_ =
    TableDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdOauthToken = Nothing
    , _tdTableId = pTdTableId_
    , _tdFields = Nothing
    , _tdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TableDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TableDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TableDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TableDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TableDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | ID of the table to be deleted.
tdTableId :: Lens' TableDelete' Text
tdTableId
  = lens _tdTableId (\ s a -> s{_tdTableId = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TableDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TableDelete' Alt
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TableDelete' where
        type Rs TableDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableDelete'{..}
          = go _tdQuotaUser (Just _tdPrettyPrint) _tdUserIp
              _tdKey
              _tdOauthToken
              _tdTableId
              _tdFields
              (Just _tdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TableDeleteResource)
                      r
                      u
