{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Task.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.delete@.
module Network.Google.API.FusionTables.Task.Delete
    (
    -- * REST Resource
      TaskDeleteAPI

    -- * Creating a Request
    , taskDelete'
    , TaskDelete'

    -- * Request Lenses
    , tddQuotaUser
    , tddPrettyPrint
    , tddTaskId
    , tddUserIp
    , tddKey
    , tddOauthToken
    , tddTableId
    , tddFields
    , tddAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.task.delete which the
-- 'TaskDelete'' request conforms to.
type TaskDeleteAPI =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :>
           Capture "taskId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ 'taskDelete'' smart constructor.
data TaskDelete' = TaskDelete'
    { _tddQuotaUser   :: !(Maybe Text)
    , _tddPrettyPrint :: !Bool
    , _tddTaskId      :: !Text
    , _tddUserIp      :: !(Maybe Text)
    , _tddKey         :: !(Maybe Text)
    , _tddOauthToken  :: !(Maybe Text)
    , _tddTableId     :: !Text
    , _tddFields      :: !(Maybe Text)
    , _tddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tddQuotaUser'
--
-- * 'tddPrettyPrint'
--
-- * 'tddTaskId'
--
-- * 'tddUserIp'
--
-- * 'tddKey'
--
-- * 'tddOauthToken'
--
-- * 'tddTableId'
--
-- * 'tddFields'
--
-- * 'tddAlt'
taskDelete'
    :: Text -- ^ 'taskId'
    -> Text -- ^ 'tableId'
    -> TaskDelete'
taskDelete' pTddTaskId_ pTddTableId_ =
    TaskDelete'
    { _tddQuotaUser = Nothing
    , _tddPrettyPrint = True
    , _tddTaskId = pTddTaskId_
    , _tddUserIp = Nothing
    , _tddKey = Nothing
    , _tddOauthToken = Nothing
    , _tddTableId = pTddTableId_
    , _tddFields = Nothing
    , _tddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tddQuotaUser :: Lens' TaskDelete' (Maybe Text)
tddQuotaUser
  = lens _tddQuotaUser (\ s a -> s{_tddQuotaUser = a})

-- | Returns response with indentations and line breaks.
tddPrettyPrint :: Lens' TaskDelete' Bool
tddPrettyPrint
  = lens _tddPrettyPrint
      (\ s a -> s{_tddPrettyPrint = a})

-- | The identifier of the task to delete.
tddTaskId :: Lens' TaskDelete' Text
tddTaskId
  = lens _tddTaskId (\ s a -> s{_tddTaskId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tddUserIp :: Lens' TaskDelete' (Maybe Text)
tddUserIp
  = lens _tddUserIp (\ s a -> s{_tddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tddKey :: Lens' TaskDelete' (Maybe Text)
tddKey = lens _tddKey (\ s a -> s{_tddKey = a})

-- | OAuth 2.0 token for the current user.
tddOauthToken :: Lens' TaskDelete' (Maybe Text)
tddOauthToken
  = lens _tddOauthToken
      (\ s a -> s{_tddOauthToken = a})

-- | Table from which the task is being deleted.
tddTableId :: Lens' TaskDelete' Text
tddTableId
  = lens _tddTableId (\ s a -> s{_tddTableId = a})

-- | Selector specifying which fields to include in a partial response.
tddFields :: Lens' TaskDelete' (Maybe Text)
tddFields
  = lens _tddFields (\ s a -> s{_tddFields = a})

-- | Data format for the response.
tddAlt :: Lens' TaskDelete' Alt
tddAlt = lens _tddAlt (\ s a -> s{_tddAlt = a})

instance GoogleRequest TaskDelete' where
        type Rs TaskDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TaskDelete'{..}
          = go _tddQuotaUser (Just _tddPrettyPrint) _tddTaskId
              _tddUserIp
              _tddKey
              _tddOauthToken
              _tddTableId
              _tddFields
              (Just _tddAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TaskDeleteAPI) r u
