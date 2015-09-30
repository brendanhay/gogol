{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Task.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific task by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTaskGet@.
module FusionTables.Task.Get
    (
    -- * REST Resource
      TaskGetAPI

    -- * Creating a Request
    , taskGet
    , TaskGet

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgTaskId
    , tgUserIp
    , tgKey
    , tgOauthToken
    , tgTableId
    , tgFields
    , tgAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTaskGet@ which the
-- 'TaskGet' request conforms to.
type TaskGetAPI =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :> Capture "taskId" Text :> Get '[JSON] Task

-- | Retrieves a specific task by its ID.
--
-- /See:/ 'taskGet' smart constructor.
data TaskGet = TaskGet
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgTaskId      :: !Text
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgOauthToken  :: !(Maybe Text)
    , _tgTableId     :: !Text
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgTaskId'
--
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgOauthToken'
--
-- * 'tgTableId'
--
-- * 'tgFields'
--
-- * 'tgAlt'
taskGet
    :: Text -- ^ 'taskId'
    -> Text -- ^ 'tableId'
    -> TaskGet
taskGet pTgTaskId_ pTgTableId_ =
    TaskGet
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgTaskId = pTgTaskId_
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgOauthToken = Nothing
    , _tgTableId = pTgTableId_
    , _tgFields = Nothing
    , _tgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TaskGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TaskGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | The identifier of the task to get.
tgTaskId :: Lens' TaskGet' Text
tgTaskId = lens _tgTaskId (\ s a -> s{_tgTaskId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIp :: Lens' TaskGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TaskGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TaskGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Table to which the task belongs.
tgTableId :: Lens' TaskGet' Text
tgTableId
  = lens _tgTableId (\ s a -> s{_tgTableId = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TaskGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TaskGet' Text
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TaskGet' where
        type Rs TaskGet' = Task
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TaskGet{..}
          = go _tgQuotaUser _tgPrettyPrint _tgTaskId _tgUserIp
              _tgKey
              _tgOauthToken
              _tgTableId
              _tgFields
              _tgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TaskGetAPI) r u
