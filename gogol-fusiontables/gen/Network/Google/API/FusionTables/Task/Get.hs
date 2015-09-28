{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Task.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific task by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.get@.
module Network.Google.API.FusionTables.Task.Get
    (
    -- * REST Resource
      TaskGetAPI

    -- * Creating a Request
    , taskGet'
    , TaskGet'

    -- * Request Lenses
    , tasQuotaUser
    , tasPrettyPrint
    , tasTaskId
    , tasUserIp
    , tasKey
    , tasOauthToken
    , tasTableId
    , tasFields
    , tasAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.task.get which the
-- 'TaskGet'' request conforms to.
type TaskGetAPI =
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
                         QueryParam "alt" Alt :> Get '[JSON] Task

-- | Retrieves a specific task by its ID.
--
-- /See:/ 'taskGet'' smart constructor.
data TaskGet' = TaskGet'
    { _tasQuotaUser   :: !(Maybe Text)
    , _tasPrettyPrint :: !Bool
    , _tasTaskId      :: !Text
    , _tasUserIp      :: !(Maybe Text)
    , _tasKey         :: !(Maybe Text)
    , _tasOauthToken  :: !(Maybe Text)
    , _tasTableId     :: !Text
    , _tasFields      :: !(Maybe Text)
    , _tasAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasQuotaUser'
--
-- * 'tasPrettyPrint'
--
-- * 'tasTaskId'
--
-- * 'tasUserIp'
--
-- * 'tasKey'
--
-- * 'tasOauthToken'
--
-- * 'tasTableId'
--
-- * 'tasFields'
--
-- * 'tasAlt'
taskGet'
    :: Text -- ^ 'taskId'
    -> Text -- ^ 'tableId'
    -> TaskGet'
taskGet' pTasTaskId_ pTasTableId_ =
    TaskGet'
    { _tasQuotaUser = Nothing
    , _tasPrettyPrint = True
    , _tasTaskId = pTasTaskId_
    , _tasUserIp = Nothing
    , _tasKey = Nothing
    , _tasOauthToken = Nothing
    , _tasTableId = pTasTableId_
    , _tasFields = Nothing
    , _tasAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tasQuotaUser :: Lens' TaskGet' (Maybe Text)
tasQuotaUser
  = lens _tasQuotaUser (\ s a -> s{_tasQuotaUser = a})

-- | Returns response with indentations and line breaks.
tasPrettyPrint :: Lens' TaskGet' Bool
tasPrettyPrint
  = lens _tasPrettyPrint
      (\ s a -> s{_tasPrettyPrint = a})

-- | The identifier of the task to get.
tasTaskId :: Lens' TaskGet' Text
tasTaskId
  = lens _tasTaskId (\ s a -> s{_tasTaskId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tasUserIp :: Lens' TaskGet' (Maybe Text)
tasUserIp
  = lens _tasUserIp (\ s a -> s{_tasUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tasKey :: Lens' TaskGet' (Maybe Text)
tasKey = lens _tasKey (\ s a -> s{_tasKey = a})

-- | OAuth 2.0 token for the current user.
tasOauthToken :: Lens' TaskGet' (Maybe Text)
tasOauthToken
  = lens _tasOauthToken
      (\ s a -> s{_tasOauthToken = a})

-- | Table to which the task belongs.
tasTableId :: Lens' TaskGet' Text
tasTableId
  = lens _tasTableId (\ s a -> s{_tasTableId = a})

-- | Selector specifying which fields to include in a partial response.
tasFields :: Lens' TaskGet' (Maybe Text)
tasFields
  = lens _tasFields (\ s a -> s{_tasFields = a})

-- | Data format for the response.
tasAlt :: Lens' TaskGet' Alt
tasAlt = lens _tasAlt (\ s a -> s{_tasAlt = a})

instance GoogleRequest TaskGet' where
        type Rs TaskGet' = Task
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TaskGet'{..}
          = go _tasQuotaUser (Just _tasPrettyPrint) _tasTaskId
              _tasUserIp
              _tasKey
              _tasOauthToken
              _tasTableId
              _tasFields
              (Just _tasAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TaskGetAPI) r u
