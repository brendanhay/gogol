{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Tasks.Tasks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new task on the specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksInsert@.
module Network.Google.Resource.Tasks.Tasks.Insert
    (
    -- * REST Resource
      TasksInsertResource

    -- * Creating a Request
    , tasksInsert'
    , TasksInsert'

    -- * Request Lenses
    , tiParent
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIP
    , tiPayload
    , tiKey
    , tiTaskList
    , tiOAuthToken
    , tiFields
    , tiPrevious
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksInsert@ which the
-- 'TasksInsert'' request conforms to.
type TasksInsertResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           QueryParam "parent" Text :>
             QueryParam "previous" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Task :> Post '[JSON] Task

-- | Creates a new task on the specified task list.
--
-- /See:/ 'tasksInsert'' smart constructor.
data TasksInsert' = TasksInsert'
    { _tiParent      :: !(Maybe Text)
    , _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIP      :: !(Maybe Text)
    , _tiPayload     :: !Task
    , _tiKey         :: !(Maybe AuthKey)
    , _tiTaskList    :: !Text
    , _tiOAuthToken  :: !(Maybe OAuthToken)
    , _tiFields      :: !(Maybe Text)
    , _tiPrevious    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiParent'
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIP'
--
-- * 'tiPayload'
--
-- * 'tiKey'
--
-- * 'tiTaskList'
--
-- * 'tiOAuthToken'
--
-- * 'tiFields'
--
-- * 'tiPrevious'
tasksInsert'
    :: Task -- ^ 'payload'
    -> Text -- ^ 'tasklist'
    -> TasksInsert'
tasksInsert' pTiPayload_ pTiTaskList_ =
    TasksInsert'
    { _tiParent = Nothing
    , _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIP = Nothing
    , _tiPayload = pTiPayload_
    , _tiKey = Nothing
    , _tiTaskList = pTiTaskList_
    , _tiOAuthToken = Nothing
    , _tiFields = Nothing
    , _tiPrevious = Nothing
    }

-- | Parent task identifier. If the task is created at the top level, this
-- parameter is omitted. Optional.
tiParent :: Lens' TasksInsert' (Maybe Text)
tiParent = lens _tiParent (\ s a -> s{_tiParent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TasksInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TasksInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIP :: Lens' TasksInsert' (Maybe Text)
tiUserIP = lens _tiUserIP (\ s a -> s{_tiUserIP = a})

-- | Multipart request metadata.
tiPayload :: Lens' TasksInsert' Task
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TasksInsert' (Maybe AuthKey)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | Task list identifier.
tiTaskList :: Lens' TasksInsert' Text
tiTaskList
  = lens _tiTaskList (\ s a -> s{_tiTaskList = a})

-- | OAuth 2.0 token for the current user.
tiOAuthToken :: Lens' TasksInsert' (Maybe OAuthToken)
tiOAuthToken
  = lens _tiOAuthToken (\ s a -> s{_tiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TasksInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

-- | Previous sibling task identifier. If the task is created at the first
-- position among its siblings, this parameter is omitted. Optional.
tiPrevious :: Lens' TasksInsert' (Maybe Text)
tiPrevious
  = lens _tiPrevious (\ s a -> s{_tiPrevious = a})

instance GoogleAuth TasksInsert' where
        authKey = tiKey . _Just
        authToken = tiOAuthToken . _Just

instance GoogleRequest TasksInsert' where
        type Rs TasksInsert' = Task
        request = requestWith appsTasksRequest
        requestWith rq TasksInsert'{..}
          = go _tiTaskList _tiParent _tiPrevious _tiQuotaUser
              (Just _tiPrettyPrint)
              _tiUserIP
              _tiFields
              _tiKey
              _tiOAuthToken
              (Just AltJSON)
              _tiPayload
          where go
                  = clientBuild (Proxy :: Proxy TasksInsertResource) rq
