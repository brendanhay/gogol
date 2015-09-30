{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Column.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific column by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesColumnGet@.
module FusionTables.Column.Get
    (
    -- * REST Resource
      ColumnGetAPI

    -- * Creating a Request
    , columnGet
    , ColumnGet

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgKey
    , cgOauthToken
    , cgTableId
    , cgColumnId
    , cgFields
    , cgAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnGet@ which the
-- 'ColumnGet' request conforms to.
type ColumnGetAPI =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           Capture "columnId" Text :> Get '[JSON] Column

-- | Retrieves a specific column by its ID.
--
-- /See:/ 'columnGet' smart constructor.
data ColumnGet = ColumnGet
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIp      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Text)
    , _cgOauthToken  :: !(Maybe Text)
    , _cgTableId     :: !Text
    , _cgColumnId    :: !Text
    , _cgFields      :: !(Maybe Text)
    , _cgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgKey'
--
-- * 'cgOauthToken'
--
-- * 'cgTableId'
--
-- * 'cgColumnId'
--
-- * 'cgFields'
--
-- * 'cgAlt'
columnGet
    :: Text -- ^ 'tableId'
    -> Text -- ^ 'columnId'
    -> ColumnGet
columnGet pCgTableId_ pCgColumnId_ =
    ColumnGet
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgKey = Nothing
    , _cgOauthToken = Nothing
    , _cgTableId = pCgTableId_
    , _cgColumnId = pCgColumnId_
    , _cgFields = Nothing
    , _cgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' ColumnGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' ColumnGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' ColumnGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' ColumnGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' ColumnGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Table to which the column belongs.
cgTableId :: Lens' ColumnGet' Text
cgTableId
  = lens _cgTableId (\ s a -> s{_cgTableId = a})

-- | Name or identifier for the column that is being requested.
cgColumnId :: Lens' ColumnGet' Text
cgColumnId
  = lens _cgColumnId (\ s a -> s{_cgColumnId = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' ColumnGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' ColumnGet' Text
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest ColumnGet' where
        type Rs ColumnGet' = Column
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u ColumnGet{..}
          = go _cgQuotaUser _cgPrettyPrint _cgUserIp _cgKey
              _cgOauthToken
              _cgTableId
              _cgColumnId
              _cgFields
              _cgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ColumnGetAPI) r u
