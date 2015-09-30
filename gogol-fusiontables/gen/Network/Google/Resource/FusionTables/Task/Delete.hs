{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Task.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTaskDelete@.
module FusionTables.Task.Delete
    (
    -- * REST Resource
      TaskDeleteAPI

    -- * Creating a Request
    , taskDelete
    , TaskDelete

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdTaskId
    , tdUserIp
    , tdKey
    , tdOauthToken
    , tdTableId
    , tdFields
    , tdAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTaskDelete@ which the
-- 'TaskDelete' request conforms to.
type TaskDeleteAPI =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :> Capture "taskId" Text :> Delete '[JSON] ()

-- | Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ 'taskDelete' smart constructor.
data TaskDelete = TaskDelete
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdTaskId      :: !Text
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdOauthToken  :: !(Maybe Text)
    , _tdTableId     :: !Text
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdTaskId'
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
taskDelete
    :: Text -- ^ 'taskId'
    -> Text -- ^ 'tableId'
    -> TaskDelete
taskDelete pTdTaskId_ pTdTableId_ =
    TaskDelete
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdTaskId = pTdTaskId_
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdOauthToken = Nothing
    , _tdTableId = pTdTableId_
    , _tdFields = Nothing
    , _tdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TaskDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TaskDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | The identifier of the task to delete.
tdTaskId :: Lens' TaskDelete' Text
tdTaskId = lens _tdTaskId (\ s a -> s{_tdTaskId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TaskDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TaskDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TaskDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Table from which the task is being deleted.
tdTableId :: Lens' TaskDelete' Text
tdTableId
  = lens _tdTableId (\ s a -> s{_tdTableId = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TaskDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TaskDelete' Text
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TaskDelete' where
        type Rs TaskDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TaskDelete{..}
          = go _tdQuotaUser _tdPrettyPrint _tdTaskId _tdUserIp
              _tdKey
              _tdOauthToken
              _tdTableId
              _tdFields
              _tdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TaskDeleteAPI) r u
