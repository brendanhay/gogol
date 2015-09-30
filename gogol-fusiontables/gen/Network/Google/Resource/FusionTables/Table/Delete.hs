{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module FusionTables.Table.Delete
    (
    -- * REST Resource
      TableDeleteAPI

    -- * Creating a Request
    , tableDelete
    , TableDelete

    -- * Request Lenses
    , tabaQuotaUser
    , tabaPrettyPrint
    , tabaUserIp
    , tabaKey
    , tabaOauthToken
    , tabaTableId
    , tabaFields
    , tabaAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableDelete@ which the
-- 'TableDelete' request conforms to.
type TableDeleteAPI =
     "tables" :>
       Capture "tableId" Text :> Delete '[JSON] ()

-- | Deletes a table.
--
-- /See:/ 'tableDelete' smart constructor.
data TableDelete = TableDelete
    { _tabaQuotaUser   :: !(Maybe Text)
    , _tabaPrettyPrint :: !Bool
    , _tabaUserIp      :: !(Maybe Text)
    , _tabaKey         :: !(Maybe Text)
    , _tabaOauthToken  :: !(Maybe Text)
    , _tabaTableId     :: !Text
    , _tabaFields      :: !(Maybe Text)
    , _tabaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabaQuotaUser'
--
-- * 'tabaPrettyPrint'
--
-- * 'tabaUserIp'
--
-- * 'tabaKey'
--
-- * 'tabaOauthToken'
--
-- * 'tabaTableId'
--
-- * 'tabaFields'
--
-- * 'tabaAlt'
tableDelete
    :: Text -- ^ 'tableId'
    -> TableDelete
tableDelete pTabaTableId_ =
    TableDelete
    { _tabaQuotaUser = Nothing
    , _tabaPrettyPrint = True
    , _tabaUserIp = Nothing
    , _tabaKey = Nothing
    , _tabaOauthToken = Nothing
    , _tabaTableId = pTabaTableId_
    , _tabaFields = Nothing
    , _tabaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tabaQuotaUser :: Lens' TableDelete' (Maybe Text)
tabaQuotaUser
  = lens _tabaQuotaUser
      (\ s a -> s{_tabaQuotaUser = a})

-- | Returns response with indentations and line breaks.
tabaPrettyPrint :: Lens' TableDelete' Bool
tabaPrettyPrint
  = lens _tabaPrettyPrint
      (\ s a -> s{_tabaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tabaUserIp :: Lens' TableDelete' (Maybe Text)
tabaUserIp
  = lens _tabaUserIp (\ s a -> s{_tabaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tabaKey :: Lens' TableDelete' (Maybe Text)
tabaKey = lens _tabaKey (\ s a -> s{_tabaKey = a})

-- | OAuth 2.0 token for the current user.
tabaOauthToken :: Lens' TableDelete' (Maybe Text)
tabaOauthToken
  = lens _tabaOauthToken
      (\ s a -> s{_tabaOauthToken = a})

-- | ID of the table to be deleted.
tabaTableId :: Lens' TableDelete' Text
tabaTableId
  = lens _tabaTableId (\ s a -> s{_tabaTableId = a})

-- | Selector specifying which fields to include in a partial response.
tabaFields :: Lens' TableDelete' (Maybe Text)
tabaFields
  = lens _tabaFields (\ s a -> s{_tabaFields = a})

-- | Data format for the response.
tabaAlt :: Lens' TableDelete' Text
tabaAlt = lens _tabaAlt (\ s a -> s{_tabaAlt = a})

instance GoogleRequest TableDelete' where
        type Rs TableDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableDelete{..}
          = go _tabaQuotaUser _tabaPrettyPrint _tabaUserIp
              _tabaKey
              _tabaOauthToken
              _tabaTableId
              _tabaFields
              _tabaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TableDeleteAPI) r u
