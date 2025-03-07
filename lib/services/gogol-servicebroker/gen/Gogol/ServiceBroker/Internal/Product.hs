{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceBroker.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ServiceBroker.Internal.Product
  ( -- * GoogleIamV1__Binding
    GoogleIamV1__Binding (..),
    newGoogleIamV1__Binding,

    -- * GoogleIamV1__Policy
    GoogleIamV1__Policy (..),
    newGoogleIamV1__Policy,

    -- * GoogleIamV1__SetIamPolicyRequest
    GoogleIamV1__SetIamPolicyRequest (..),
    newGoogleIamV1__SetIamPolicyRequest,

    -- * GoogleIamV1__TestIamPermissionsRequest
    GoogleIamV1__TestIamPermissionsRequest (..),
    newGoogleIamV1__TestIamPermissionsRequest,

    -- * GoogleIamV1__TestIamPermissionsResponse
    GoogleIamV1__TestIamPermissionsResponse (..),
    newGoogleIamV1__TestIamPermissionsResponse,

    -- * GoogleType__Expr
    GoogleType__Expr (..),
    newGoogleType__Expr,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceBroker.Internal.Sum

-- | Associates @members@ with a @role@.
--
-- /See:/ 'newGoogleIamV1__Binding' smart constructor.
data GoogleIamV1__Binding = GoogleIamV1__Binding
  { -- | The condition that is associated with this binding. NOTE: An unsatisfied condition will not allow user access via current binding. Different bindings, including their conditions, are examined independently.
    condition :: (Core.Maybe GoogleType__Expr),
    -- | Specifies the identities requesting access for a Cloud Platform resource. @members@ can have the following values:
    --
    -- -   @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account.
    --
    -- -   @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account.
    --
    -- -   @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ .
    --
    -- -   @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@.
    --
    -- -   @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@.
    --
    -- -   @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains the role in the binding.
    --
    -- -   @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding.
    --
    -- -   @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding.
    --
    -- -   @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to @members@. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__Binding' with the minimum fields required to make a request.
newGoogleIamV1__Binding ::
  GoogleIamV1__Binding
newGoogleIamV1__Binding =
  GoogleIamV1__Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1__Binding where
  parseJSON =
    Core.withObject
      "GoogleIamV1__Binding"
      ( \o ->
          GoogleIamV1__Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON GoogleIamV1__Binding where
  toJSON GoogleIamV1__Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.
--
-- A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@ to a single @role@. Members can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role.
--
-- Optionally, a @binding@ can specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both.
--
-- __JSON example:__
--
-- > {
-- >   "bindings": [
-- >     {
-- >       "role": "roles/resourcemanager.organizationAdmin",
-- >       "members": [
-- >         "user:mike@example.com",
-- >         "group:admins@example.com",
-- >         "domain:google.com",
-- >         "serviceAccount:my-project-id@appspot.gserviceaccount.com"
-- >       ]
-- >     },
-- >     {
-- >       "role": "roles/resourcemanager.organizationViewer",
-- >       "members": ["user:eve@example.com"],
-- >       "condition": {
-- >         "title": "expirable access",
-- >         "description": "Does not grant access after Sep 2020",
-- >         "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')",
-- >       }
-- >     }
-- >   ],
-- >   "etag": "BwWWja0YfJA=",
-- >   "version": 3
-- > }
--
-- __YAML example:__
--
-- > bindings:
-- > - members:
-- >   - user:mike@example.com
-- >   - group:admins@example.com
-- >   - domain:google.com
-- >   - serviceAccount:my-project-id@appspot.gserviceaccount.com
-- >   role: roles/resourcemanager.organizationAdmin
-- > - members:
-- >   - user:eve@example.com
-- >   role: roles/resourcemanager.organizationViewer
-- >   condition:
-- >     title: expirable access
-- >     description: Does not grant access after Sep 2020
-- >     expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
-- > - etag: BwWWja0YfJA=
-- > - version: 3
--
-- For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newGoogleIamV1__Policy' smart constructor.
data GoogleIamV1__Policy = GoogleIamV1__Policy
  { -- | Associates a list of @members@ to a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one member.
    bindings :: (Core.Maybe [GoogleIamV1__Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy.
    --
    -- __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy.
    --
    -- Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected.
    --
    -- Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations:
    --
    -- -   Getting a policy that includes a conditional role binding
    -- -   Adding a conditional role binding to a policy
    -- -   Changing a conditional role binding in a policy
    -- -   Removing any role binding, with or without a condition, from a policy that includes conditions
    --
    -- __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    --
    -- If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__Policy' with the minimum fields required to make a request.
newGoogleIamV1__Policy ::
  GoogleIamV1__Policy
newGoogleIamV1__Policy =
  GoogleIamV1__Policy
    { bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1__Policy where
  parseJSON =
    Core.withObject
      "GoogleIamV1__Policy"
      ( \o ->
          GoogleIamV1__Policy
            Core.<$> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON GoogleIamV1__Policy where
  toJSON GoogleIamV1__Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newGoogleIamV1__SetIamPolicyRequest' smart constructor.
newtype GoogleIamV1__SetIamPolicyRequest = GoogleIamV1__SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe GoogleIamV1__Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__SetIamPolicyRequest' with the minimum fields required to make a request.
newGoogleIamV1__SetIamPolicyRequest ::
  GoogleIamV1__SetIamPolicyRequest
newGoogleIamV1__SetIamPolicyRequest =
  GoogleIamV1__SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON GoogleIamV1__SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GoogleIamV1__SetIamPolicyRequest"
      ( \o ->
          GoogleIamV1__SetIamPolicyRequest Core.<$> (o Core..:? "policy")
      )

instance Core.ToJSON GoogleIamV1__SetIamPolicyRequest where
  toJSON GoogleIamV1__SetIamPolicyRequest {..} =
    Core.object (Core.catMaybes [("policy" Core..=) Core.<$> policy])

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1__TestIamPermissionsRequest' smart constructor.
newtype GoogleIamV1__TestIamPermissionsRequest = GoogleIamV1__TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__TestIamPermissionsRequest' with the minimum fields required to make a request.
newGoogleIamV1__TestIamPermissionsRequest ::
  GoogleIamV1__TestIamPermissionsRequest
newGoogleIamV1__TestIamPermissionsRequest =
  GoogleIamV1__TestIamPermissionsRequest
    { permissions =
        Core.Nothing
    }

instance Core.FromJSON GoogleIamV1__TestIamPermissionsRequest where
  parseJSON =
    Core.withObject
      "GoogleIamV1__TestIamPermissionsRequest"
      ( \o ->
          GoogleIamV1__TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON GoogleIamV1__TestIamPermissionsRequest where
  toJSON GoogleIamV1__TestIamPermissionsRequest {..} =
    Core.object
      (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1__TestIamPermissionsResponse' smart constructor.
newtype GoogleIamV1__TestIamPermissionsResponse = GoogleIamV1__TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__TestIamPermissionsResponse' with the minimum fields required to make a request.
newGoogleIamV1__TestIamPermissionsResponse ::
  GoogleIamV1__TestIamPermissionsResponse
newGoogleIamV1__TestIamPermissionsResponse =
  GoogleIamV1__TestIamPermissionsResponse
    { permissions =
        Core.Nothing
    }

instance Core.FromJSON GoogleIamV1__TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "GoogleIamV1__TestIamPermissionsResponse"
      ( \o ->
          GoogleIamV1__TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON GoogleIamV1__TestIamPermissionsResponse where
  toJSON GoogleIamV1__TestIamPermissionsResponse {..} =
    Core.object
      (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])

-- | Represents an expression text. Example:
--
-- > title: "User account presence"
-- > description: "Determines whether the request has a user account"
-- > expression: "size(request.user) > 0"
--
-- /See:/ 'newGoogleType__Expr' smart constructor.
data GoogleType__Expr = GoogleType__Expr
  { -- | An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    --
    -- The application context of the containing message determines which well-known feature set of CEL is supported.
    expression :: (Core.Maybe Core.Text),
    -- | An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleType__Expr' with the minimum fields required to make a request.
newGoogleType__Expr ::
  GoogleType__Expr
newGoogleType__Expr =
  GoogleType__Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON GoogleType__Expr where
  parseJSON =
    Core.withObject
      "GoogleType__Expr"
      ( \o ->
          GoogleType__Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON GoogleType__Expr where
  toJSON GoogleType__Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )
