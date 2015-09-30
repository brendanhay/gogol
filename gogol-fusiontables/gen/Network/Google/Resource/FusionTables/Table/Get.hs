{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Table.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific table by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableGet@.
module FusionTables.Table.Get
    (
    -- * REST Resource
      TableGetAPI

    -- * Creating a Request
    , tableGet
    , TableGet

    -- * Request Lenses
    , tggQuotaUser
    , tggPrettyPrint
    , tggUserIp
    , tggKey
    , tggOauthToken
    , tggTableId
    , tggFields
    , tggAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableGet@ which the
-- 'TableGet' request conforms to.
type TableGetAPI =
     "tables" :>
       Capture "tableId" Text :> Get '[JSON] Table

-- | Retrieves a specific table by its ID.
--
-- /See:/ 'tableGet' smart constructor.
data TableGet = TableGet
    { _tggQuotaUser   :: !(Maybe Text)
    , _tggPrettyPrint :: !Bool
    , _tggUserIp      :: !(Maybe Text)
    , _tggKey         :: !(Maybe Text)
    , _tggOauthToken  :: !(Maybe Text)
    , _tggTableId     :: !Text
    , _tggFields      :: !(Maybe Text)
    , _tggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tggQuotaUser'
--
-- * 'tggPrettyPrint'
--
-- * 'tggUserIp'
--
-- * 'tggKey'
--
-- * 'tggOauthToken'
--
-- * 'tggTableId'
--
-- * 'tggFields'
--
-- * 'tggAlt'
tableGet
    :: Text -- ^ 'tableId'
    -> TableGet
tableGet pTggTableId_ =
    TableGet
    { _tggQuotaUser = Nothing
    , _tggPrettyPrint = True
    , _tggUserIp = Nothing
    , _tggKey = Nothing
    , _tggOauthToken = Nothing
    , _tggTableId = pTggTableId_
    , _tggFields = Nothing
    , _tggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tggQuotaUser :: Lens' TableGet' (Maybe Text)
tggQuotaUser
  = lens _tggQuotaUser (\ s a -> s{_tggQuotaUser = a})

-- | Returns response with indentations and line breaks.
tggPrettyPrint :: Lens' TableGet' Bool
tggPrettyPrint
  = lens _tggPrettyPrint
      (\ s a -> s{_tggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tggUserIp :: Lens' TableGet' (Maybe Text)
tggUserIp
  = lens _tggUserIp (\ s a -> s{_tggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tggKey :: Lens' TableGet' (Maybe Text)
tggKey = lens _tggKey (\ s a -> s{_tggKey = a})

-- | OAuth 2.0 token for the current user.
tggOauthToken :: Lens' TableGet' (Maybe Text)
tggOauthToken
  = lens _tggOauthToken
      (\ s a -> s{_tggOauthToken = a})

-- | Identifier for the table being requested.
tggTableId :: Lens' TableGet' Text
tggTableId
  = lens _tggTableId (\ s a -> s{_tggTableId = a})

-- | Selector specifying which fields to include in a partial response.
tggFields :: Lens' TableGet' (Maybe Text)
tggFields
  = lens _tggFields (\ s a -> s{_tggFields = a})

-- | Data format for the response.
tggAlt :: Lens' TableGet' Text
tggAlt = lens _tggAlt (\ s a -> s{_tggAlt = a})

instance GoogleRequest TableGet' where
        type Rs TableGet' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableGet{..}
          = go _tggQuotaUser _tggPrettyPrint _tggUserIp _tggKey
              _tggOauthToken
              _tggTableId
              _tggFields
              _tggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TableGetAPI) r u
